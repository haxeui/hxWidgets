package wx.widgets;

@:enum extern abstract SystemMetric(SystemMetricImpl) {

    @:native("wxSYS_MOUSE_BUTTONS")      var MOUSE_BUTTONS;
    @:native("wxSYS_BORDER_X")           var BORDER_X;
    @:native("wxSYS_BORDER_Y")           var BORDER_Y;
    @:native("wxSYS_CURSOR_X")           var CURSOR_X;
    @:native("wxSYS_CURSOR_Y")           var CURSOR_Y;
    @:native("wxSYS_DCLICK_X")           var DCLICK_X;
    @:native("wxSYS_DCLICK_Y")           var DCLICK_Y;
    @:native("wxSYS_DRAG_X")             var DRAG_X;
    @:native("wxSYS_DRAG_Y")             var DRAG_Y;
    @:native("wxSYS_EDGE_X")             var EDGE_X;
    @:native("wxSYS_EDGE_Y")             var EDGE_Y;
    @:native("wxSYS_HSCROLL_ARROW_X")    var HSCROLL_ARROW_X;
    @:native("wxSYS_HSCROLL_ARROW_Y")    var HSCROLL_ARROW_Y;
    @:native("wxSYS_HTHUMB_X")           var HTHUMB_X;
    @:native("wxSYS_ICON_X")             var ICON_X;
    @:native("wxSYS_ICON_Y")             var ICON_Y;
    @:native("wxSYS_ICONSPACING_X")      var ICONSPACING_X;
    @:native("wxSYS_ICONSPACING_Y")      var ICONSPACING_Y;
    @:native("wxSYS_WINDOWMIN_X")        var WINDOWMIN_X;
    @:native("wxSYS_WINDOWMIN_Y")        var WINDOWMIN_Y;
    @:native("wxSYS_SCREEN_X")           var SCREEN_X;
    @:native("wxSYS_SCREEN_Y")           var SCREEN_Y;
    @:native("wxSYS_FRAMESIZE_X")        var FRAMESIZE_X;
    @:native("wxSYS_FRAMESIZE_Y")        var FRAMESIZE_Y;
    @:native("wxSYS_SMALLICON_X")        var SMALLICON_X;
    @:native("wxSYS_SMALLICON_Y")        var SMALLICON_Y;
    @:native("wxSYS_HSCROLL_Y")          var HSCROLL_Y;
    @:native("wxSYS_VSCROLL_X")          var VSCROLL_X;
    @:native("wxSYS_VSCROLL_ARROW_X")    var VSCROLL_ARROW_X;
    @:native("wxSYS_VSCROLL_ARROW_Y")    var VSCROLL_ARROW_Y;
    @:native("wxSYS_VTHUMB_Y")           var VTHUMB_Y;
    @:native("wxSYS_CAPTION_Y")          var CAPTION_Y;
    @:native("wxSYS_MENU_Y")             var MENU_Y;
    @:native("wxSYS_NETWORK_PRESENT")    var NETWORK_PRESENT;
    @:native("wxSYS_PENWINDOWS_PRESENT") var PENWINDOWS_PRESENT;
    @:native("wxSYS_SHOW_SOUNDS")        var SHOW_SOUNDS;
    @:native("wxSYS_SWAP_BUTTONS")       var SWAP_BUTTONS;

}

@:include("wx/settings.h")
@:native("cpp::Struct<wxSystemMetric, cpp::EnumHandler>")
extern class SystemMetricImpl {
}
