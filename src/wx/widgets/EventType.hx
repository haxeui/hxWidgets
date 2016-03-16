package wx.widgets;

@:headerCode("
#include <wx/event.h>
#include <wx/textctrl.h>
#include <wx/hyperlink.h>
#include <wx/timer.h>
#include <wx/notebook.h>
")
class EventType {
    public static var BUTTON:Int                = untyped __cpp__("wxEVT_BUTTON");
    public static var CHECKBOX:Int              = untyped __cpp__("wxEVT_CHECKBOX");
    public static var RADIOBUTTON:Int           = untyped __cpp__("wxEVT_RADIOBUTTON");
    public static var SLIDER:Int                = untyped __cpp__("wxEVT_SLIDER");
    public static var TEXT:Int                  = untyped __cpp__("wxEVT_TEXT");
    public static var TEXT_ENTER:Int            = untyped __cpp__("wxEVT_TEXT_ENTER");
    public static var TEXT_URL:Int              = untyped __cpp__("wxEVT_TEXT_URL");
    public static var TEXT_MAXLEN:Int           = untyped __cpp__("wxEVT_TEXT_MAXLEN");
    public static var SCROLL_THUMBTRACK:Int     = untyped __cpp__("wxEVT_SCROLL_THUMBTRACK");
    public static var SCROLL_THUMBRELEASE:Int   = untyped __cpp__("wxEVT_SCROLL_THUMBRELEASE");
    public static var CLOSE_WINDOW:Int          = untyped __cpp__("wxEVT_CLOSE_WINDOW");
    public static var MENU:Int                  = untyped __cpp__("wxEVT_MENU");
    public static var IDLE:Int                  = untyped __cpp__("wxEVT_IDLE");
    public static var TIMER:Int                 = untyped __cpp__("wxEVT_TIMER");
    public static var NOTEBOOK_PAGE_CHANGED:Int = untyped __cpp__("wxEVT_NOTEBOOK_PAGE_CHANGED");
    public static var SIZE:Int                  = untyped __cpp__("wxEVT_SIZE");
    /* commented out as it causes link errors on my mac for some reason - should investigate
    public static var HYPERLINK:Int             = untyped __cpp__("wxEVT_HYPERLINK");
    */
}
