package wx.widgets;

import haxe.macro.Expr;
import haxe.macro.Context;

typedef OSVersion = {
    var major:Int;
    var minor:Int;
    @:optional var revision:Int;
}

#if !macro @:build(wx.widgets.Entry.wxconfig()) #end
@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class Entry {
	#if !macro
    public static function start(args:Array<String>):Void {
        var args = [#if (haxe_ver >= 3.3) Sys.programPath() #else Sys.executablePath() #end].concat(args);
        var argc = args.length;
        untyped __cpp__("char** argv = new char*[argc]");

        for (i in 0...argc) {
            var arg:cpp.ConstCharStar = args[i];
            untyped __cpp__("argv[i] = (char *)arg");
        }
        untyped __cpp__("wxEntryStart(argc, argv)");
        untyped __cpp__("delete[] argv");
        untyped __cpp__("wxInitAllImageHandlers()");
    }

    public static function cleanup ():Void {
        untyped __cpp__("wxEntryCleanup();");
    }
    #end

    macro public static function wxconfig():Array<Field> {
        var _pos = Context.currentPos();
        var _class = Context.getLocalClass();

        var os:OSVersion = getOSVersion();
        if (new EReg("window", "i").match(Sys.systemName())) {
			_class.get().meta.add(":buildXml", [{ expr:EConst( CString( "<include name=\"${haxelib:hxWidgets}/../Build.xml\" />" ) ), pos:_pos }], _pos );
		} else {
			var config = new sys.io.Process("wx-config", ["--cxxflags"]);
			var cflags = config.stdout.readAll().toString().split("\n")[0].split(" ").map(function (s:String) {
				return '<compilerflag value="$s" />';
			}).join("\n");
			config.exitCode();

			var config = new sys.io.Process("wx-config", ["--libs", "--gl-libs"]);
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

			if (new EReg("mac", "i").match(Sys.systemName()) && (os.major > 10 || (os.major == 10 && os.minor >= 7))) {
				cflags += '\n<compilerflag value="-mmacosx-version-min=10.7" />\n<compilerflag value="-std=c++11" />\n<compilerflag value="-stdlib=libc++" />\n';
				link.push('<compilerflag value="-std=c++11" />');
				link.push('<compilerflag value="-stdlib=libc++" />');
				link.push('<lib name="-lc++" />');
			}

			_class.get().meta.add(":buildXml", [{ expr:EConst( CString( '<set name="MAC_USE_CURRENT_SDK" value="1" if="macos" /><set name="HXCPP_GCC" value="1" if="macos" /><set name="HXCPP_M64" value="1" if="macos" /><files id="haxe">$cflags</files>\n<target id="haxe" tool="linker" toolid="exe">${link.join("\n")}</target>' ) ), pos:_pos }], _pos );
        }

        // https://github.com/HaxeFoundation/hxcpp/issues/397
        haxe.macro.Compiler.define("source-header", "GeneratedByHaxe");

        return Context.getBuildFields();
    }

    private static function getOSVersion():OSVersion {
        var version:OSVersion = {
            major: 0,
            minor: 0,
            revision: 0
        };

        if (new EReg ("mac", "i").match (Sys.systemName ())) {
            var versionString:String = new sys.io.Process("sw_vers", ["-productVersion"]).stdout.readAll().toString();
            var arr = versionString.split(".");
            version = {
                major: Std.parseInt(arr[0]),
                minor: Std.parseInt(arr[1]),
                revision: Std.parseInt(arr[2])
            };
        }
        return version;
    }
}
