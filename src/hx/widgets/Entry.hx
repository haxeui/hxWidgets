package hx.widgets;

@:buildXml('
<files id="haxe">
	<compilerflag value="-IZ:/hxWidgets/wxWidgets/include" />
</files>
<target id="haxe" tool="linker" toolid="exe">
	<lib name="Z:/hxWidgets/lib/Windows/libwxwidgets.lib" />
	<lib name="user32.lib" />
	<lib name="winspool.lib" />
	<lib name="advapi32.lib" />
	<lib name="gdi32.lib" />
	<lib name="comdlg32.lib" />
	<lib name="comctl32.lib" />
	<lib name="ole32.lib" />
	<lib name="oleaut32.lib" />
	<lib name="rpcrt4.lib" />
	<lib name="shell32.lib" />
	<lib name="kernel32.lib" />
</target>
')
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
	}

	public static function cleanup ():Void {
		untyped __cpp__("wxEntryCleanup();");
	}
}
