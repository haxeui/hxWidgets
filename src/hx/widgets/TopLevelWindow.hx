package hx.widgets;

import cpp.Pointer;
import wx.widgets.TopLevelWindow in WxTopLevelWindow;
import wx.widgets.WxString;

class TopLevelWindow extends Window {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var title(get, set):String;
    private function get_title():String {
        var r:WxString = topLevelWindowRef.ptr.getTitle();
        return new String(r.c_str());
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
        return Pointer.fromRaw(untyped __cpp__("(wxTopLevelWindow*)(_ref->get_raw())"));
    }

}
