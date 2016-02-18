package hx.widgets;

import wx.widgets.PlatformInfo in WxPlatformInfo;

class PlatformInfo {
    private var _ref:WxPlatformInfo;

    public function new() {
        _ref = WxPlatformInfo.createInstance();
    }
    
    public function getOSMajorVersion():Int {
        return _ref.getOSMajorVersion();
    }
    
    public function getOSMinorVersion():Int {
        return _ref.getOSMinorVersion();
    }
    
    public function getArchName():String {
        return "";//_ref.getArchName();
    }
    
    public function getOperatingSystemFamilyName():String {
        return "";//_ref.getOperatingSystemFamilyName();
    }
    
    public function getOperatingSystemId():Int {
        return _ref.getOperatingSystemId();
    }
    
    public function getOperatingSystemIdName():String {
        return "";//_ref.getOperatingSystemIdName();
    }
}
