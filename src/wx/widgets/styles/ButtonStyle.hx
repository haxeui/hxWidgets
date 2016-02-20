package wx.widgets.styles;

@:headerCode("#include <wx/button.h>")
class ButtonStyle {
    public static var LEFT:Int            = untyped __cpp__("wxBU_LEFT");     // Left-justifies the label. Windows and GTK+ only.
    public static var TOP:Int             = untyped __cpp__("wxBU_TOP");      // Aligns the label to the top of the button. Windows and GTK+ only.
    public static var RIGHT:Int           = untyped __cpp__("wxBU_RIGHT");    // Right-justifies the bitmap label. Windows and GTK+ only.
    public static var BOTTOM:Int          = untyped __cpp__("wxBU_BOTTOM");   // Aligns the label to the bottom of the button. Windows and GTK+ only.
    public static var EXACTFIT:Int        = untyped __cpp__("wxBU_EXACTFIT"); // By default, all buttons are made of at least the standard button size, even if their contents is small enough to fit into a smaller size. This is done for consistency as most platforms use buttons of the same size in the native dialogs, but can be overridden by specifying this flag. If it is given, the button will be made just big enough for its contents. Notice that under MSW the button will still have at least the standard height, even with this style, if it has a non-empty label.
    public static var NOTEXT:Int          = untyped __cpp__("wxBU_NOTEXT");   // Disables the display of the text label in the button even if it has one or its id is one of the standard stock ids with an associated label: without using this style a button which is only supposed to show a bitmap but uses a standard id would display a label too.
    public static var BORDER_NONE:Int     = untyped __cpp__("wxBORDER_NONE"); // Creates a button without border. This is currently implemented in MSW, GTK2 and OSX/Cocoa.
}