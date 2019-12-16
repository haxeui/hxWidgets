package hx.widgets;

import cpp.Pointer;
import wx.widgets.BoolProperty in WxBoolProperty;
import wx.widgets.WxString;

class BoolProperty extends PGProperty {
    public function new(label:String, name:String, value:Bool) {
        var strLabel = WxString.fromUTF8(label);
        var strName = WxString.fromUTF8(name);
        
        _ref = WxBoolProperty.createInstance(strLabel, strName, value).reinterpret();
        
        super();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var boolPropertyRef(get, null):Pointer<WxBoolProperty>;
    private function get_boolPropertyRef():Pointer<WxBoolProperty> {
       return _ref.reinterpret();
    }
}