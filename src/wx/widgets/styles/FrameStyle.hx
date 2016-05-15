package wx.widgets.styles;

@:headerCode("#include <wx/frame.h>")
class FrameStyle {

    /** Defined as wxMINIMIZE_BOX | wxMAXIMIZE_BOX | wxRESIZE_BORDER | wxSYSTEM_MENU | wxCAPTION | wxCLOSE_BOX | wxCLIP_CHILDREN. */
    public static var DEFAULT_FRAME_STYLE:Int     = untyped __cpp__("wxDEFAULT_FRAME_STYLE");
    /** Display the frame iconized (minimized). Windows only. */
    public static var ICONIZE:Int                 = untyped __cpp__("wxICONIZE");
    /** Puts a caption on the frame. Notice that this flag is required by wxMINIMIZE_BOX, wxMAXIMIZE_BOX and wxCLOSE_BOX on most
     * systems as the corresponding buttons cannot be shown if the window has no title bar at all. I.e. if wxCAPTION is not specified
     * those styles would be simply ignored. */
    public static var CAPTION:Int                 = untyped __cpp__("wxCAPTION");
    /** Identical to wxICONIZE. Windows only. */
    public static var MINIMIZE:Int                = untyped __cpp__("wxMINIMIZE");
    /** Displays a minimize box on the frame. */
    public static var MINIMIZE_BOX:Int            = untyped __cpp__("wxMINIMIZE_BOX");
    /** Displays the frame maximized. Windows and GTK+ only. */
    public static var MAXIMIZE:Int                = untyped __cpp__("wxMAXIMIZE");
    /** Displays a maximize box on the frame. Notice that under wxGTK wxRESIZE_BORDER must be used as well or this style is ignored. */
    public static var MAXIMIZE_BOX:Int            = untyped __cpp__("wxMAXIMIZE_BOX");
    /** Displays a close box on the frame. */
    public static var CLOSE_BOX:Int               = untyped __cpp__("wxCLOSE_BOX");
    /** Stay on top of all other windows, see also wxFRAME_FLOAT_ON_PARENT. */
    public static var STAY_ON_TOP:Int             = untyped __cpp__("wxSTAY_ON_TOP");
    /** Displays a system menu containing the list of various windows commands in the window title bar. Unlike wxMINIMIZE_BOX, wxMAXIMIZE_BOX
      * and wxCLOSE_BOX styles this style can be used without wxCAPTION, at least under Windows, and makes the system menu available without
      * showing it on screen in this case. However it is recommended to only use it together with wxCAPTION for consistent behaviour under all platforms. */
    public static var SYSTEM_MENU:Int             = untyped __cpp__("wxSYSTEM_MENU");
    /** Displays a resizable border around the window. */
    public static var RESIZE_BORDER:Int           = untyped __cpp__("wxRESIZE_BORDER");
    /** Causes a frame with a small title bar to be created; the frame does not appear in the taskbar under Windows or GTK+. */
    public static var FRAME_TOOL_WINDOW:Int       = untyped __cpp__("wxFRAME_TOOL_WINDOW");
    /** Creates an otherwise normal frame but it does not appear in the taskbar under Windows or GTK+ (note that it will minimize to the desktop
      * window under Windows which may seem strange to the users and thus it might be better to use this style only without wxMINIMIZE_BOX style).
      * In wxGTK, the flag is respected only if the window manager supports _NET_WM_STATE_SKIP_TASKBAR hint. */
    public static var FRAME_NO_TASKBAR:Int        = untyped __cpp__("wxFRAME_NO_TASKBAR");
    /** The frame will always be on top of its parent (unlike wxSTAY_ON_TOP). A frame created with this style must have a non-NULL parent. */
    public static var FRAME_FLOAT_ON_PARENT:Int   = untyped __cpp__("wxFRAME_FLOAT_ON_PARENT");
    /** Windows with this style are allowed to have their shape changed with the SetShape() method. */
    public static var FRAME_SHAPED:Int            = untyped __cpp__("wxFRAME_SHAPED");

}
