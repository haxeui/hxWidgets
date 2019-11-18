package hx.widgets;

import cpp.Pointer;
import wx.widgets.StandardPaths in WxStandardPaths;
import wx.widgets.WxString;

class StandardPaths {
    private var _ref:Pointer<WxStandardPaths>;
    
    public function new() {
    }

    public var appDocumentsDir(get, null):String;
    private function get_appDocumentsDir():String {
        var s:WxString = standardPathsRef.ptr.getAppDocumentsDir();
        return new String(s.toUTF8().data());
    }

    public var configDir(get, null):String;
    private function get_configDir():String {
        var s:WxString = standardPathsRef.ptr.getConfigDir();
        return new String(s.toUTF8().data());
    }

    public var dataDir(get, null):String;
    private function get_dataDir():String {
        var s:WxString = standardPathsRef.ptr.getDataDir();
        return new String(s.toUTF8().data());
    }
    
    public var documentsDir(get, null):String;
    private function get_documentsDir():String {
        var s:WxString = standardPathsRef.ptr.getDocumentsDir();
        return new String(s.toUTF8().data());
    }

    public var executablePath(get, null):String;
    private function get_executablePath():String {
        var s:WxString = standardPathsRef.ptr.getExecutablePath();
        return new String(s.toUTF8().data());
    }
    
    public var localDataDir(get, null):String;
    private function get_localDataDir():String {
        var s:WxString = standardPathsRef.ptr.getLocalDataDir();
        return new String(s.toUTF8().data());
    }
    
    public var resourcesDir(get, null):String;
    private function get_resourcesDir():String {
        var s:WxString = standardPathsRef.ptr.getResourcesDir();
        return new String(s.toUTF8().data());
    }

    public var tempDir(get, null):String;
    private function get_tempDir():String {
        var s:WxString = standardPathsRef.ptr.getTempDir();
        return new String(s.toUTF8().data());
    }
    
    public var userConfigDir(get, null):String;
    private function get_userConfigDir():String {
        var s:WxString = standardPathsRef.ptr.getUserConfigDir();
        return new String(s.toUTF8().data());
    }
    
    public var userDataDir(get, null):String;
    private function get_userDataDir():String {
        var s:WxString = standardPathsRef.ptr.getUserDataDir();
        return new String(s.toUTF8().data());
    }
    
    public var userLocalDataDir(get, null):String;
    private function get_userLocalDataDir():String {
        var s:WxString = standardPathsRef.ptr.getUserLocalDataDir();
        return new String(s.toUTF8().data());
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var standardPathsRef(get, null):Pointer<WxStandardPaths>;
    private function get_standardPathsRef():Pointer<WxStandardPaths> {
        return _ref.reinterpret();
    }
}