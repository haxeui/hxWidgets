package hx.widgets;

import cpp.Pointer;
import wx.widgets.StringProperty in WxStringProperty;
import wx.widgets.WxString;

class StringProperty extends PGProperty {
    public function new(label:String, name:String, value:String) {
        var strLabel = WxString.fromUTF8(label);
        var strName = WxString.fromUTF8(name);
        var strValue = WxString.fromUTF8(value);
        
        _ref = WxStringProperty.createInstance(strLabel, strName, strValue).reinterpret();
        
        super();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var stringPropertyRef(get, null):Pointer<WxStringProperty>;
    private function get_stringPropertyRef():Pointer<WxStringProperty> {
       return _ref.reinterpret();
    }
}