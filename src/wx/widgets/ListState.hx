package wx.widgets;

@:headerCode("
#include <wx/listctrl.h>
")
class ListState {
    public static var DISABLED:Int          = untyped __cpp__("wxLIST_STATE_DISABLED");
    public static var DONTCARE:Int          = untyped __cpp__("wxLIST_STATE_DONTCARE");
    public static var DROPHILITED:Int       = untyped __cpp__("wxLIST_STATE_DROPHILITED");
    public static var FILTERED:Int          = untyped __cpp__("wxLIST_STATE_FILTERED");
    public static var FOCUSED:Int           = untyped __cpp__("wxLIST_STATE_FOCUSED");
    public static var INUSE:Int             = untyped __cpp__("wxLIST_STATE_INUSE");
    public static var PICKED:Int            = untyped __cpp__("wxLIST_STATE_PICKED");
    public static var SELECTED:Int          = untyped __cpp__("wxLIST_STATE_SELECTED");
    public static var SOURCE:Int            = untyped __cpp__("wxLIST_STATE_SOURCE");
}
