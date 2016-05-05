package wx.widgets;

#if (haxe_ver >= 3.3)
@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
@:include("wx/wx.h")
@:unreflective
@:enum extern abstract OperatingSystemId(OperatingSystemIdImpl) {
    @:native("wxLEFT")                  var LEFT;
    @:native("wxOS_UNKNOWN")            var UNKNOWN;
    @:native("wxOS_MAC_OS")             var MAC_OS;
    @:native("wxOS_MAC_OSX_DARWIN")     var MAC_OSX_DARWIN;
    @:native("wxOS_MAC")                var MAC;
    @:native("wxOS_WINDOWS_NT")         var WINDOWS_NT;
    @:native("wxOS_WINDOWS_NT")         var WINDOWS;
    @:native("wxOS_UNIX_LINUX")         var UNIX_LINUX;
    @:native("wxOS_UNIX_FREEBSD")       var UNIX_FREEBSD;
    @:native("wxOS_UNIX_OPENBSD")       var UNIX_OPENBSD;
    @:native("wxOS_UNIX_NETBSD")        var UNIX_NETBSD;
    @:native("wxOS_UNIX_SOLARIS")       var UNIX_SOLARIS;
    @:native("wxOS_UNIX_AIX")           var UNIX_AIX;
    @:native("wxOS_UNIX_HPUX")          var UNIX_HPUX;
    @:native("wxOS_UNIX")               var UNIX;
}

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
@:native("cpp::Struct<wxOperatingSystemId, cpp::EnumHandler>")
extern class OperatingSystemIdImpl {
}
#else
@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
abstract OperatingSystemId(Int) to Int from Int {
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
#end
