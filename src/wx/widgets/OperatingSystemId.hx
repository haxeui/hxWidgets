package wx.widgets;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
@:include("wx/wx.h")
@:unreflective
extern enum abstract OperatingSystemId(OperatingSystemIdImpl) {

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
@:unreflective
@:native("wxOperatingSystemId")
extern class OperatingSystemIdImpl {
}
