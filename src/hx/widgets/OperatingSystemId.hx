package hx.widgets;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class OperatingSystemId {
    public static var OS_UNKNOWN:Int                = untyped __cpp__("wxOS_UNKNOWN");
    public static var OS_MAC_OS:Int                 = untyped __cpp__("wxOS_MAC_OS");
    public static var OS_MAC_OSX_DARWIN:Int         = untyped __cpp__("wxOS_MAC_OSX_DARWIN");
    public static var OS_MAC:Int                    = untyped __cpp__("wxOS_MAC");
    public static var OS_WINDOWS_NT:Int             = untyped __cpp__("wxOS_WINDOWS_NT");
    public static var OS_WINDOWS:Int                = untyped __cpp__("wxOS_WINDOWS_NT");
    public static var OS_UNIX_LINUX:Int             = untyped __cpp__("wxOS_UNIX_LINUX");
    public static var OS_UNIX_FREEBSD:Int           = untyped __cpp__("wxOS_UNIX_FREEBSD");
    public static var OS_UNIX_OPENBSD:Int           = untyped __cpp__("wxOS_UNIX_OPENBSD");
    public static var OS_UNIX_NETBSD:Int            = untyped __cpp__("wxOS_UNIX_NETBSD");
    public static var OS_UNIX_SOLARIS:Int           = untyped __cpp__("wxOS_UNIX_SOLARIS");
    public static var OS_UNIX_AIX:Int               = untyped __cpp__("wxOS_UNIX_AIX");
    public static var OS_UNIX_HPUX:Int              = untyped __cpp__("wxOS_UNIX_HPUX");
    public static var OS_UNIX:Int                   = untyped __cpp__("wxOS_UNIX");
}
