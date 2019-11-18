package wx.widgets;

@:headerCode("
#include <wx/utils.h>
#undef RegisterClass
")
class ExecFlags {
    public static var ASYNC:Int             = untyped __cpp__("wxEXEC_ASYNC");
    public static var SYNC:Int              = untyped __cpp__("wxEXEC_SYNC");
    public static var SHOW_CONSOLE:Int      = untyped __cpp__("wxEXEC_SHOW_CONSOLE");
    public static var MAKE_GROUP_LEADER:Int = untyped __cpp__("wxEXEC_MAKE_GROUP_LEADER");
    public static var NODISABLE:Int         = untyped __cpp__("wxEXEC_NODISABLE");
    public static var NOEVENTS:Int          = untyped __cpp__("wxEXEC_NOEVENTS");
    public static var HIDE_CONSOLE:Int      = untyped __cpp__("wxEXEC_HIDE_CONSOLE");
    public static var BLOCK:Int             = untyped __cpp__("wxEXEC_BLOCK");
}