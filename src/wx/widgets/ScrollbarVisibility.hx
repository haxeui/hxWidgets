package wx.widgets;

@:include("wx/scrolwin.h")
@:unreflective
extern enum abstract ScrollbarVisibility(ScrollbarVisibilityImpl) {

    @:native("wxSHOW_SB_NEVER")     var NEVER;
    @:native("wxSHOW_SB_DEFAULT")   var DEFAULT;
    @:native("wxSHOW_SB_ALWAYS")    var ALWAYS;
}

@:include("wx/scrolwin.h")
@:unreflective
@:native("cpp::Struct<wxScrollbarVisibility, cpp::EnumHandler>")
extern class ScrollbarVisibilityImpl {
}
