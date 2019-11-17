package hx.widgets;

import cpp.Pointer;
import cpp.Reference;
import wx.widgets.AppTraits in WxAppTraits;
import wx.widgets.WxString;

class AppTraits {
    private var _ref:Pointer<WxAppTraits>;
    
    public function new() {
    }
    
    public var desktopEnvironment(get, null):String;
    private function get_desktopEnvironment():String {
        var s:WxString = appTraitsRef.ptr.getDesktopEnvironment();
        return new String(s.toUTF8().data());
    }
    
    public var standardPaths(get, null):StandardPaths;
    @:access(hx.widgets.StandardPaths)
    private function get_standardPaths():StandardPaths {
        var p = appTraitsRef.ptr.getStandardPaths();
        var paths = new StandardPaths();
        paths._ref = Pointer.addressOf(p);
        return paths;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var appTraitsRef(get, null):Pointer<WxAppTraits>;
    private function get_appTraitsRef():Pointer<WxAppTraits> {
        return _ref.reinterpret();
    }
}