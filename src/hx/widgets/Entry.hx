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
		untyped __cpp__("wxEntryStart(0, NULL);");
	}

	public static function cleanup ():Void {
		untyped __cpp__("wxEntryCleanup();");
	}
}