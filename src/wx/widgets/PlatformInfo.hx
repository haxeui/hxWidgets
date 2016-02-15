package wx.widgets;

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
