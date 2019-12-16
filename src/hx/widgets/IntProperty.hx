package hx.widgets;

import cpp.Pointer;
import wx.widgets.IntProperty in WxIntProperty;
import wx.widgets.WxString;

class IntProperty extends PGProperty {
    public function new(label:String, name:String, value:Int) {
        var strLabel = WxString.fromUTF8(label);
        var strName = WxString.fromUTF8(name);
        
        _ref = WxIntProperty.createInstance(strLabel, strName, value).reinterpret();
        
        super();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var intPropertyRef(get, null):Pointer<WxIntProperty>;
    private function get_intPropertyRef():Pointer<WxIntProperty> {
       return _ref.reinterpret();
    }
}