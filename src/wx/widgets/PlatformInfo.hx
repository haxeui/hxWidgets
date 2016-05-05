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
    @:native("GetOperatingSystemId")                public function getOperatingSystemId():OperatingSystemId;
    @:native("GetOperatingSystemIdName")            public function getOperatingSystemIdName():WxString;
}
