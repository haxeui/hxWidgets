package wx.widgets.styles;

@:headerCode("
#include <wx/dialog.h>
#undef RegisterClass
")
class DialogStyle {

    /** Puts a caption on the dialog box. */
    public static var CAPTION:Int                   = untyped __cpp__("wxCAPTION");
    /** Equivalent to a combination of wxCAPTION, wxCLOSE_BOX and wxSYSTEM_MENU (the last one is not used under Unix). */
    public static var DEFAULT_DIALOG_STYLE:Int      = untyped __cpp__("wxDEFAULT_DIALOG_STYLE");
    /** Display a resizable frame around the window. */
    public static var RESIZE_BORDER:Int             = untyped __cpp__("wxRESIZE_BORDER");
    /** Display a system menu. */
    public static var SYSTEM_MENU:Int               = untyped __cpp__("wxSYSTEM_MENU");
    /** Displays a close box on the frame. */
    public static var CLOSE_BOX:Int                 = untyped __cpp__("wxCLOSE_BOX");
    /** Displays a maximize box on the dialog. */
    public static var MAXIMIZE_BOX:Int              = untyped __cpp__("wxMAXIMIZE_BOX");
    /** Displays a minimize box on the dialog. */
    public static var MINIMIZE_BOX:Int              = untyped __cpp__("wxMINIMIZE_BOX");
    /** Display a thick frame around the window. */
    //public static var THICK_FRAME:Int               = untyped __cpp__("wxTHICK_FRAME");
    /** The dialog stays on top of all other windows. */
    public static var STAY_ON_TOP:Int               = untyped __cpp__("wxSTAY_ON_TOP");
    /** This style is obsolete and doesn't do anything any more, don't use it in any new code. */
    //public static var NO_3D:Int                     = untyped __cpp__("wxNO_3D");
    /** By default, a dialog created with a NULL parent window will be given the application's top level window as parent. Use this style to prevent this
      * from happening and create an orphan dialog. This is not recommended for modal dialogs. */
    public static var DIALOG_NO_PARENT:Int          = untyped __cpp__("wxDIALOG_NO_PARENT");
    /** Under Windows, puts a query button on the caption. When pressed, Windows will go into a context-sensitive help mode and wxWidgets will send a wxEVT_HELP
      * event if the user clicked on an application window. Note that this is an extended style and must be set by calling SetExtraStyle() before Create is called
      * (two-step construction). */
    public static var DIALOG_EX_CONTEXTHELP:Int     = untyped __cpp__("wxDIALOG_EX_CONTEXTHELP");
    /** On OS X, frames with this style will be shown with a metallic look. This is an extra style. */
    public static var DIALOG_EX_METAL:Int           = untyped __cpp__("wxDIALOG_EX_METAL");

}
