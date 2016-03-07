package wx.widgets;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class OperatingSystemId {
    public static var UNKNOWN:Int                = untyped __cpp__("wxOS_UNKNOWN");
    public static var MAC_OS:Int                 = untyped __cpp__("wxOS_MAC_OS");
    public static var MAC_OSX_DARWIN:Int         = untyped __cpp__("wxOS_MAC_OSX_DARWIN");
    public static var MAC:Int                    = untyped __cpp__("wxOS_MAC");
    public static var WINDOWS_NT:Int             = untyped __cpp__("wxOS_WINDOWS_NT");
    public static var WINDOWS:Int                = untyped __cpp__("wxOS_WINDOWS_NT");
    public static var UNIX_LINUX:Int             = untyped __cpp__("wxOS_UNIX_LINUX");
    public static var UNIX_FREEBSD:Int           = untyped __cpp__("wxOS_UNIX_FREEBSD");
    public static var UNIX_OPENBSD:Int           = untyped __cpp__("wxOS_UNIX_OPENBSD");
    public static var UNIX_NETBSD:Int            = untyped __cpp__("wxOS_UNIX_NETBSD");
    public static var UNIX_SOLARIS:Int           = untyped __cpp__("wxOS_UNIX_SOLARIS");
    public static var UNIX_AIX:Int               = untyped __cpp__("wxOS_UNIX_AIX");
    public static var UNIX_HPUX:Int              = untyped __cpp__("wxOS_UNIX_HPUX");
    public static var UNIX:Int                   = untyped __cpp__("wxOS_UNIX");
}
