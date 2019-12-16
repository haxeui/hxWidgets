package hx.widgets;

import cpp.Pointer;
import wx.widgets.PGProperty in WxPGProperty;

class PGProperty extends Object {
    public function new() {
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyRef(get, null):Pointer<WxPGProperty>;
    private function get_propertyRef():Pointer<WxPGProperty> {
       return _ref.reinterpret();
    }
}