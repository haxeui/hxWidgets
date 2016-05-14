package hx.widgets;

import cpp.Pointer;
import wx.widgets.PlatformInfo in WxPlatformInfo;
import wx.widgets.WxString;

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
        var r:WxString = _ref.ptr.getArchName();
        return new String(r.c_str());
    }

    public var operatingSystemFamilyName(get, null):String;
    private function get_operatingSystemFamilyName():String {
        var r:WxString = _ref.ptr.getOperatingSystemFamilyName();
        return new String(r.c_str());
    }

    public var operatingSystemId(get, null):OperatingSystemId;
    private function get_operatingSystemId():OperatingSystemId {
        return _ref.ptr.getOperatingSystemId();
    }

    public var operatingSystemIdName(get, null):String;
    private function get_operatingSystemIdName():String {
        var r:WxString = _ref.ptr.getOperatingSystemIdName();
        return new String(r.c_str());
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Util functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var isWindows(get, null):Bool;
    private function get_isWindows():Bool {
        return (operatingSystemId == OperatingSystemId.WINDOWS || operatingSystemId == OperatingSystemId.WINDOWS_NT);
    }

    public var isMac(get, null):Bool;
    private function get_isMac():Bool {
        return (operatingSystemId == OperatingSystemId.MAC || operatingSystemId == OperatingSystemId.MAC_OS || operatingSystemId == OperatingSystemId.MAC_OSX_DARWIN);
    }

    public var isLinux(get, null):Bool;
    private function get_isLinux():Bool {
        return (operatingSystemId == OperatingSystemId.UNIX_LINUX);
    }

}
