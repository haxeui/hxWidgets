package hx.widgets;

import cpp.Pointer;
import wx.widgets.StringInputStream in WxStringInputStream;
import wx.widgets.WxString;

class StringInputStream extends InputStream { 
    private var _s:String;

    public function new(s:String) {
        _s = s;
        var utf8 = WxString.fromUTF8(s);
        _ref = WxStringInputStream.createInstance(utf8).reinterpret();
    }

    public function destroy() {
        _ref.destroy();
        _ref = null;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var stringinputstreamRef(get, null):Pointer<WxStringInputStream>;
    private function get_stringinputstreamRef():Pointer<WxStringInputStream> {
        return _ref.reinterpret();
    }
}