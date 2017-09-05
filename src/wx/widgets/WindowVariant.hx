package wx.widgets;

@:include("wx/window.h")
@:unreflective
@:enum extern abstract WindowVariant(WindowVariantImpl) {

    @:native("wxWINDOW_VARIANT_NORMAL")     var WINDOW_VARIANT_NORMAL;
    @:native("wxWINDOW_VARIANT_SMALL")      var WINDOW_VARIANT_SMALL;
    @:native("wxWINDOW_VARIANT_MINI")       var WINDOW_VARIANT_MINI;
    @:native("wxWINDOW_VARIANT_LARGE")      var WINDOW_VARIANT_LARGE;
    @:native("wxWINDOW_VARIANT_MAX")        var WINDOW_VARIANT_MAX;
}

@:include("wx/window.h")
@:unreflective
@:native("cpp::Struct<wxWindowVariant, cpp::EnumHandler>")
extern class WindowVariantImpl {
}
