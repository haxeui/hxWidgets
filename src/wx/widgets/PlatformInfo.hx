package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/platinfo.h")
@:unreflective
@:native("wxPlatformInfo")
extern class PlatformInfo {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPlatformInfo")                  private static function _new():RawPointer<PlatformInfo>;
                                                    public static inline function createInstance():Pointer<PlatformInfo> return Pointer.fromRaw(_new());

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetOSMajorVersion")                   public function getOSMajorVersion():Int;
    @:native("GetOSMinorVersion")                   public function getOSMinorVersion():Int;
    @:native("GetArchName")                         public function getArchName():WxString;
    @:native("GetOperatingSystemFamilyName")        public function getOperatingSystemFamilyName():WxString;
    @:native("GetOperatingSystemId")                public function getOperatingSystemId():Int;
    @:native("GetOperatingSystemIdName")            public function getOperatingSystemIdName():WxString;
}

/*
import cpp.ConstCharStar;

@:include("wx/platinfo.h")
@:unreflective
@:native("cpp::Reference<wxPlatformInfo>")
extern class PlatformInfo extends PlatformInfoImpl {
    @:native("new wxPlatformInfo")                  public static function createInstance():PlatformInfo;
}

@:include("wx/platinfo.h")
@:unreflective
@:native("wxPlatformInfo")
extern class PlatformInfoImpl {
    @:native("GetOSMajorVersion")                   public function getOSMajorVersion():Int;
    @:native("GetOSMinorVersion")                   public function getOSMinorVersion():Int;
    @:native("GetArchName")                         public function getArchName():ConstCharStar;
    @:native("GetOperatingSystemFamilyName")        public function getOperatingSystemFamilyName():ConstCharStar;
    @:native("GetOperatingSystemId")                public function getOperatingSystemId():Int;
    @:native("GetOperatingSystemIdName")            public function getOperatingSystemIdName():ConstCharStar;
}
*/