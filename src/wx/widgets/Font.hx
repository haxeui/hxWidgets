package wx.widgets;

@:include("wx/font.h")
@:unreflective
@:native("cpp::Reference<wxFont>")
extern class Font extends FontImpl {
    @:native("new wxFont")               public static function createInstance(pointSize:Int, family:FontFamily, style:FontStyle, weight:FontWeight, underline:Bool = false):Font;
}

@:unreflective
@:native("wxFont")
extern class FontImpl {
}
