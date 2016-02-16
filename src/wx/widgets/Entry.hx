package wx.widgets;

@:buildXml('<include name="${haxelib:hxWidgets}/../Build.xml" />')
@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class Entry {
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
}
