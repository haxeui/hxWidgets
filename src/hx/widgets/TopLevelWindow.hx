package hx.widgets;

import cpp.Pointer;
import wx.widgets.TopLevelWindow in WxTopLevelWindow;
import wx.widgets.WxString;

class TopLevelWindow extends NonOwnedWindow {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var title(get, set):String;
    private function get_title():String {
        var r:WxString = topLevelWindowRef.ptr.getTitle();
        return new String(r.toUTF8().data());
    }
    private function set_title(value:String):String {
        var s = WxString.createInstance(value);
        topLevelWindowRef.ptr.setTitle(s.ref);
        s.destroy();
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var topLevelWindowRef(get, null):Pointer<WxTopLevelWindow>;
    private function get_topLevelWindowRef():Pointer<WxTopLevelWindow> {
        return _ref.reinterpret();
    }

}
