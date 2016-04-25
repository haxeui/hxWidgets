package wx.widgets;

@:include("wx/dcclient.h")
@:unreflective
@:native("cpp::Reference<wxWindowDC>")
extern class WindowDC extends WindowDCImpl {
    @:native("new wxWindowDC")          public static function createInstance(window:Window):WindowDC;
}

@:include("wx/dcclient.h")
@:unreflective
@:native("wxWindowDC")
extern class WindowDCImpl extends DC {
}
