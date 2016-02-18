package wx.widgets;

import haxe.macro.Expr;
import haxe.macro.Context;

#if !macro @:build(wx.widgets.Entry.wxconfig()) #end
@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class Entry {
	#if !macro
    public static function start(args:Array<String>):Void {
        var args = [Sys.executablePath()].concat(args);
        var argc = args.length;
        untyped __cpp__("char** argv = new char*[argc]");

        for (i in 0...argc) {
            var arg:cpp.CastCharStar = args[i];
            untyped __cpp__("argv[i] = arg");
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

        if (new EReg("window", "i").match(Sys.systemName())) {
			_class.get().meta.add(":buildXml", [{ expr:EConst( CString( "<include name=\"${haxelib:hxWidgets}/../Build.xml\" />" ) ), pos:_pos }], _pos );
		} else {
			var config = new sys.io.Process("wx-config", ["--cxxflags"]);
			var cflags = config.stdout.readAll().toString().split("\n")[0].split(" ").map(function (s:String) {
				return '<compilerflag value="$s" />';
			}).join("\n");
			config.exitCode();

			if (new EReg ("mac", "i").match (Sys.systemName ())) {
				cflags += '\n<compilerflag value="-mmacosx-version-min=10.7" />\n<compilerflag value="-std=c++11" />\n<compilerflag value="-stdlib=libc++" />\n';
			}

			var config = new sys.io.Process("wx-config", ["--libs"]);
			var libs = config.stdout.readAll().toString().split("\n")[0].split(" ");
			var link = [];
			var i = 0;
			while (i < libs.length) {
				if (libs[i] == "-framework") {
					link.push('<vflag name="${libs[i]}" value="${libs[i+1]}"/>');
					i++;
				} else {
					link.push('<lib name="${libs[i]}" />');
				}

				i++;
			}
			config.exitCode();

			_class.get().meta.add(":buildXml", [{ expr:EConst( CString( '<files id="haxe">$cflags</files>\n<target id="haxe" tool="linker" toolid="exe">${link.join("\n")}</target>' ) ), pos:_pos }], _pos );
        }

        return Context.getBuildFields();
    }
}
