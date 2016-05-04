package wx.widgets;

#if (haxe_ver >= 3.3)
@:unreflective
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
@:unreflective
@:native("wxSystemMetric")
extern class SystemMetricImpl {
}
#else
@:headerCode("#include <wx/settings.h>")
abstract SystemMetric(Int) {
    public static var MOUSE_BUTTONS(default, null)          = new SystemMetric(untyped __cpp__('::wxSYS_MOUSE_BUTTONS'));
    public static var BORDER_X(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_BORDER_X'));
    public static var BORDER_Y(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_BORDER_Y'));
    public static var CURSOR_X(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_CURSOR_X'));
    public static var CURSOR_Y(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_CURSOR_Y'));
    public static var DCLICK_X(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_DCLICK_X'));
    public static var DCLICK_Y(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_DCLICK_Y'));
    public static var DRAG_X(default, null)                 = new SystemMetric(untyped __cpp__('::wxSYS_DRAG_X'));
    public static var DRAG_Y(default, null)                 = new SystemMetric(untyped __cpp__('::wxSYS_DRAG_Y'));
    public static var EDGE_X(default, null)                 = new SystemMetric(untyped __cpp__('::wxSYS_EDGE_X'));
    public static var EDGE_Y(default, null)                 = new SystemMetric(untyped __cpp__('::wxSYS_EDGE_Y'));
    public static var HSCROLL_ARROW_X(default, null)        = new SystemMetric(untyped __cpp__('::wxSYS_HSCROLL_ARROW_X'));
    public static var HSCROLL_ARROW_Y(default, null)        = new SystemMetric(untyped __cpp__('::wxSYS_HSCROLL_ARROW_Y'));
    public static var HTHUMB_X(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_HTHUMB_X'));
    public static var ICON_X(default, null)                 = new SystemMetric(untyped __cpp__('::wxSYS_ICON_X'));
    public static var ICON_Y(default, null)                 = new SystemMetric(untyped __cpp__('::wxSYS_ICON_Y'));
    public static var ICONSPACING_X(default, null)          = new SystemMetric(untyped __cpp__('::wxSYS_ICONSPACING_X'));
    public static var ICONSPACING_Y(default, null)          = new SystemMetric(untyped __cpp__('::wxSYS_ICONSPACING_Y'));
    public static var WINDOWMIN_X(default, null)            = new SystemMetric(untyped __cpp__('::wxSYS_WINDOWMIN_X'));
    public static var WINDOWMIN_Y(default, null)            = new SystemMetric(untyped __cpp__('::wxSYS_WINDOWMIN_Y'));
    public static var SCREEN_X(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_SCREEN_X'));
    public static var SCREEN_Y(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_SCREEN_Y'));
    public static var FRAMESIZE_X(default, null)            = new SystemMetric(untyped __cpp__('::wxSYS_FRAMESIZE_X'));
    public static var FRAMESIZE_Y(default, null)            = new SystemMetric(untyped __cpp__('::wxSYS_FRAMESIZE_Y'));
    public static var SMALLICON_X(default, null)            = new SystemMetric(untyped __cpp__('::wxSYS_SMALLICON_X'));
    public static var SMALLICON_Y(default, null)            = new SystemMetric(untyped __cpp__('::wxSYS_SMALLICON_Y'));
    public static var HSCROLL_Y(default, null)              = new SystemMetric(untyped __cpp__('::wxSYS_HSCROLL_Y'));
    public static var VSCROLL_X(default, null)              = new SystemMetric(untyped __cpp__('::wxSYS_VSCROLL_X'));
    public static var VSCROLL_ARROW_X(default, null)        = new SystemMetric(untyped __cpp__('::wxSYS_VSCROLL_ARROW_X'));
    public static var VSCROLL_ARROW_Y(default, null)        = new SystemMetric(untyped __cpp__('::wxSYS_VSCROLL_ARROW_Y'));
    public static var VTHUMB_Y(default, null)               = new SystemMetric(untyped __cpp__('::wxSYS_VTHUMB_Y'));
    public static var CAPTION_Y(default, null)              = new SystemMetric(untyped __cpp__('::wxSYS_CAPTION_Y'));
    public static var MENU_Y(default, null)                 = new SystemMetric(untyped __cpp__('::wxSYS_MENU_Y'));
    public static var NETWORK_PRESENT(default, null)        = new SystemMetric(untyped __cpp__('::wxSYS_NETWORK_PRESENT'));
    public static var PENWINDOWS_PRESENT(default, null)     = new SystemMetric(untyped __cpp__('::wxSYS_PENWINDOWS_PRESENT'));
    public static var SHOW_SOUNDS(default, null)            = new SystemMetric(untyped __cpp__('::wxSYS_SHOW_SOUNDS'));
    public static var SWAP_BUTTONS(default, null)           = new SystemMetric(untyped __cpp__('::wxSYS_SWAP_BUTTONS'));

    inline public function new(i:Int) {
        this = i;
    }
}
#end
