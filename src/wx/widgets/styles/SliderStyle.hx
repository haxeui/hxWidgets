package wx.widgets.styles;

@:headerCode("#include <wx/slider.h>")
class SliderStyle {
    public static var HORIZONTAL:Int =      untyped __cpp__("wxSL_HORIZONTAL");     // Displays the slider horizontally (this is the default).
    public static var VERTICAL:Int =        untyped __cpp__("wxSL_VERTICAL");       // Displays the slider vertically.
    public static var AUTOTICKS:Int =       untyped __cpp__("wxSL_AUTOTICKS");      // Displays tick marks. Windows only.
    public static var MIN_MAX_LABELS:Int =  untyped __cpp__("wxSL_MIN_MAX_LABELS"); // Displays minimum, maximum labels (new since wxWidgets 2.9.1).
    public static var VALUE_LABEL:Int =     untyped __cpp__("wxSL_VALUE_LABEL");    // Displays value label (new since wxWidgets 2.9.1).
    public static var LABELS:Int =          untyped __cpp__("wxSL_LABELS");         // Displays minimum, maximum and value labels (same as wxSL_VALUE_LABEL and wxSL_MIN_MAX_LABELS together).
    public static var LEFT:Int =            untyped __cpp__("wxSL_LEFT");           // Displays ticks on the left and forces the slider to be vertical.
    public static var RIGHT:Int =           untyped __cpp__("wxSL_RIGHT");          // Displays ticks on the right and forces the slider to be vertical.
    public static var TOP:Int =             untyped __cpp__("wxSL_TOP");            // Displays ticks on the top.
    public static var BOTTOM:Int =          untyped __cpp__("wxSL_BOTTOM");         // Displays ticks on the bottom (this is the default).
    public static var SELRANGE:Int =        untyped __cpp__("wxSL_SELRANGE");       // Allows the user to select a range on the slider. Windows only.
    public static var INVERSE:Int =         untyped __cpp__("wxSL_INVERSE");        // Inverses the minimum and maximum endpoints on the slider. Not compatible with wxSL_SELRANGE.
    
    public static var DEFAULT:Int =         HORIZONTAL;
}
