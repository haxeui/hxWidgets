package wx.widgets;

@:include("wx/settings.h")
@:native("cpp::Reference<wxSystemMetric>")
extern class SystemMetricType {
}

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
    
    @:to @:unreflective
    inline public function toNative():SystemMetricType return untyped __cpp__("static_cast<wxSystemMetric>({0})", this);

    
}
