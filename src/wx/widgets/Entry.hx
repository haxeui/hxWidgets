package wx.widgets;

@:build(wx.widgets.EntryMacro.wxconfig())
@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class Entry {

    public static function start(args:Array<String>) {
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

    public static function cleanup () {
        untyped __cpp__("wxEntryCleanup();");
    }

}
