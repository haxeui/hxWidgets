package hx.widgets;

import cpp.ConstCharStar;

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


class PlatformInfo {
    private var _ref:WxPlatformInfoRef;
    public function new() {
        _ref = WxPlatformInfoRef.createInstance();
    }
    
    public function getOSMajorVersion():Int {
        return _ref.getOSMajorVersion();
    }
    
    public function getOSMinorVersion():Int {
        return _ref.getOSMinorVersion();
    }
    
    public function getArchName():String {
        return _ref.getArchName();
    }
    
    public function getOperatingSystemFamilyName():String {
        return _ref.getOperatingSystemFamilyName();
    }
    
    public function getOperatingSystemId():Int {
        return _ref.getOperatingSystemId();
    }
    
    public function getOperatingSystemIdName():String {
        return _ref.getOperatingSystemIdName();
    }
}

@:include("wx/platinfo.h")
@:unreflective
@:native("cpp::Reference<wxPlatformInfo>")
extern class WxPlatformInfoRef extends WxPlatformInfo {
    @:native("new wxPlatformInfo")                  public static function createInstance():WxPlatformInfoRef;
}

@:include("wx/platinfo.h")
@:unreflective
@:native("wxPlatformInfo")
extern class WxPlatformInfo {
    @:native("GetOSMajorVersion")                   public function getOSMajorVersion():Int;
    @:native("GetOSMinorVersion")                   public function getOSMinorVersion():Int;
    @:native("GetArchName")                         public function getArchName():ConstCharStar;
    @:native("GetOperatingSystemFamilyName")        public function getOperatingSystemFamilyName():ConstCharStar;
    @:native("GetOperatingSystemId")                public function getOperatingSystemId():Int;
    @:native("GetOperatingSystemIdName")            public function getOperatingSystemIdName():ConstCharStar;
}
