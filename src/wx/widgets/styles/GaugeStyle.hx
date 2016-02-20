package wx.widgets.styles;

@:headerCode("#include <wx/gauge.h>")
class GaugeStyle {
    public static var HORIZONTAL:Int       = untyped __cpp__("wxGA_HORIZONTAL");   // Creates a horizontal gauge.
    public static var VERTICAL:Int         = untyped __cpp__("wxGA_VERTICAL");     // Creates a vertical gauge.
    public static var SMOOTH:Int           = untyped __cpp__("wxGA_SMOOTH");       // Creates smooth progress bar with one pixel wide update step (not supported by all platforms).
    //public static var TEXT:Int             = untyped __cpp__("wxGA_TEXT");         // Display the current value in percents in the gauge itself. This style is only supported in wxQt and ignored under the other platforms.
    //public static var PROGRESS:Int         = untyped __cpp__("wxGA_PROGRESS");     // Reflect the value of gauge in the application taskbar button under Windows 7 and later and the dock icon under OS X, ignored under the other platforms.
}