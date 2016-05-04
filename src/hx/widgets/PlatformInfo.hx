package hx.widgets;

import cpp.Pointer;
import wx.widgets.PlatformInfo in WxPlatformInfo;

class PlatformInfo {
    private var _ref:Pointer<WxPlatformInfo>;

    public function new() {
        _ref = WxPlatformInfo.createInstance();
    }
    
    public function destroy() {
        _ref.destroy();
        _ref = null;
    }
    
    public var osMajorVersion(get, null):Int;
    private function get_osMajorVersion():Int {
        return _ref.ptr.getOSMajorVersion();
    }
    
    public var osMinorVersion(get, null):Int;
    private function get_osMinorVersion():Int {
        return _ref.ptr.getOSMinorVersion();
    }
    
    public var archName(get, null):String;
    private function get_archName():String {
        return _ref.ptr.getArchName();
    }
    
    public var operatingSystemFamilyName(get, null):String;
    private function get_operatingSystemFamilyName():String {
        return _ref.ptr.getOperatingSystemFamilyName();
    }
    
    public var operatingSystemId(get, null):Int;
    private function get_operatingSystemId():Int {
        return _ref.ptr.getOperatingSystemId();
    }
    
    public var operatingSystemIdName(get, null):String;
    private function get_operatingSystemIdName():String {
        return _ref.ptr.getOperatingSystemIdName();
    }
}
