package wx.widgets;

import haxe.macro.Expr.ExprDef.EConst;
import haxe.macro.Expr.Field;
import haxe.macro.Context;
import haxe.io.Path;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;

typedef OSVersion = {
    var major:Int;
    var minor:Int;
    @:optional var revision:Int;
}

class EntryMacro {
    private static inline var DEFAULT_WX_MAJOR_VERSION = 3;
    private static inline var DEFAULT_WX_MINOR_VERSION = 1;
    private static inline var DEFAULT_WX_RELEASE_VERSION = 5;
    
    private static function getOSVersion():OSVersion {
        var version:OSVersion = {
            major: 0,
            minor: 0,
            revision: 0
        };

        if (isMac()) {
            var versionString:String = new Process("sw_vers", ["-productVersion"]).stdout.readAll().toString();
            var arr = versionString.split(".");
            version = {
                major: Std.parseInt(arr[0]),
                minor: Std.parseInt(arr[1]),
                revision: Std.parseInt(arr[2])
            };
        }
        return version;
    }

    macro public static function wxconfig():Array<Field> {
        var _pos = Context.currentPos();
        var _class = Context.getLocalClass();
        var _info = Context.getPosInfos(_pos);

        var sourcePath = Path.directory(_info.file);
        if( !Path.isAbsolute(sourcePath) ) {
            sourcePath = Path.join([Sys.getCwd(), sourcePath]);
        }
        sourcePath = Path.normalize(sourcePath);

        var libPath = Path.normalize(Path.join([sourcePath, '../../../']));
        var define = '<set name="HXWIDGETS_PATH" value="$libPath/"/>';

        var os:OSVersion = getOSVersion();
        if (isWindows()) {
            _class.get().meta.add(":buildXml", [{ expr:EConst( CString( '$define\n<include name="${libPath}/Build.xml"/>' ) ), pos:_pos }], _pos );
        } else {
            if (!checkWxConfig()) {
                Context.fatalError("The wx-config executable wasn't found in your PATH, and is required for compilation", _pos);
            }

            var makeFlag = function (s:String):String {
                return '<compilerflag value="$s" />';
            };

            var config = new Process("wx-config", ["--cxxflags"]);
            var cflags = config.stdout.readAll().toString().split("\n")[0].split(" ").map(makeFlag).join("\n");
            config.exitCode();

            #if WEBVIEW
            var config = new Process("wx-config", ["--libs", "gl,std,propgrid,webview"]);
            #else
            var config = new Process("wx-config", ["--libs", "gl,std,propgrid"]);
            #end
            var libs = config.stdout.readAll().toString().split("\n").join(" ").split(" ");
            var link = [];
            var i = 0;
            while (i < libs.length) {
                if (libs[i] == "-framework") {
                    link.push('<vflag name="${libs[i]}" value="${libs[i+1]}"/>');
                    i++;
                } else if (libs[i] != "") {
                    link.push('<lib name="${libs[i]}" />');
                }

                i++;
            }
            config.exitCode();

            cflags += "\n<compilerflag value=\"-I${HXWIDGETS_PATH}/include\" />\n";
            cflags += "\n<compilerflag value=\"-DwxUSE_GRAPHICS_CONTEXT\" />\n";
            cflags += "\n<file name=\"${HXWIDGETS_PATH}/include/custom/wxownerdrawnpanel.cpp\" />\n";

            if (isMac() && (os.major > 10 || (os.major == 10 && os.minor >= 7))) {
                #if !NO_CPP_11

                cflags += '\n<compilerflag value="-mmacosx-version-min=10.7" />\n<compilerflag value="-std=c++11" />\n<compilerflag value="-stdlib=libc++" />\n';
                link.push('<compilerflag value="-std=c++11" />');
                link.push('<compilerflag value="-stdlib=libc++" />');
                link.push('<lib name="-lc++" />');

                #end
            }

            var buildXml = {
                expr:EConst( CString( '$define
                                       <set name="MAC_USE_CURRENT_SDK" value="1" if="macos" />
                                       <set name="HXCPP_GCC" value="1" if="macos" />
                                       <set name="HXCPP_M64" value="1" if="macos" />
                                       <files id="haxe">$cflags</files>
                                       <target id="haxe" tool="linker" toolid="exe">${link.join("\n")}</target>' ) ),
                pos:_pos
            };
            _class.get().meta.add(":buildXml", [buildXml], _pos );
        }

        return Context.getBuildFields();
    }

    macro static function defineWxVersion(printResult:Bool = true) {
        var versionMajor = -1;
        var versionMinor = -1;
        var versionRelease = -1;
        
        if (isWindows()) {
            var wxPath = Sys.getEnv("WXWIN");
            var versionHeaderFile = Path.normalize(wxPath + "/include/wx/version.h");
            if (FileSystem.exists(versionHeaderFile)) {
                var contents = File.getContent(versionHeaderFile);
                versionMajor = extractDefineFromHeaderAsInt(contents, "wxMAJOR_VERSION", -1);
                versionMinor = extractDefineFromHeaderAsInt(contents, "wxMINOR_VERSION", -1);
                versionRelease = extractDefineFromHeaderAsInt(contents, "wxRELEASE_NUMBER", -1);
            }
        } else if (checkWxConfig()) {
            var config = new Process("wx-config", ["--version"]);
            var versionString = StringTools.trim(config.stdout.readAll().toString());
            var parts = versionString.split(".");
            if (parts.length == 3) {
                versionMajor = Std.parseInt(parts[0]);
                versionMinor = Std.parseInt(parts[1]);
                versionRelease = Std.parseInt(parts[2]);
                if (printResult) {
                    Sys.println('wxWidgets version detected as ${versionMajor}.${versionMinor}.${versionRelease}');
                }
            }
        }
        
        if (versionMajor == -1 || versionMinor == -1 || versionRelease == -1) {
            versionMajor = DEFAULT_WX_MAJOR_VERSION;
            versionMinor = DEFAULT_WX_MINOR_VERSION;
            versionRelease = DEFAULT_WX_RELEASE_VERSION;
            if (printResult) {
                Sys.println('WARNING: could not detect wxWidgets version, defaulting to ${DEFAULT_WX_MAJOR_VERSION}.${DEFAULT_WX_MINOR_VERSION}.${DEFAULT_WX_RELEASE_VERSION}');
            }
        }
        
        haxe.macro.Compiler.define("wxMAJOR_VERSION", Std.string(versionMajor));
        haxe.macro.Compiler.define("wxMINOR_VERSION", Std.string(versionMinor));
        haxe.macro.Compiler.define("wxRELEASE_NUMBER", Std.string(versionRelease));
        haxe.macro.Compiler.define("wxWidgetsVersion", '${versionMajor}.${versionMinor}.${versionRelease}');
        return null;
    }
    
    static function extractDefineFromHeaderAsInt(contents:String, define:String, defaultValue:Int = 0):Int {
        var value = extractDefineFromHeader(contents, define);
        if (value == null) {
            return defaultValue;
        }
        return Std.parseInt(value);
    }
    
    static function extractDefineFromHeader(contents:String, define:String):String {
        var defineString = "#define " + define;
        var n1 = contents.indexOf(defineString);
        if (n1 == -1) {
            return null;
        }
        var n2 = contents.indexOf("\n", n1);
        if (n2 == -1) {
            return null;
        }
        var value = StringTools.trim(contents.substring(n1 + defineString.length, n2));
        return value;
    }
    
    static function checkWxConfig():Bool {
        for (path in Sys.getEnv("PATH").split(":")) {
            if (FileSystem.exists(Path.join([path, "wx-config"]))) {
                return true;
            }
        }

        return false;
    }
    
    static function isWindows():Bool {
        return ~/windows/i.match(Sys.systemName());
    }
    
    static function isMac():Bool {
        return ~/mac/i.match(Sys.systemName());
    }
    
    macro static function detectPlatform() {
        if (isMac()) {
            haxe.macro.Compiler.define("PLATFORM_MAC");
        } else if (isWindows()) {
            haxe.macro.Compiler.define("PLATFORM_WINDOWS");
        } else {
            haxe.macro.Compiler.define("PLATFORM_OTHER");
        }
        
        return null;
    }
}
