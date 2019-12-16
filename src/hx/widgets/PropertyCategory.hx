package hx.widgets;

import cpp.Pointer;
import wx.widgets.PropertyCategory in WxPropertyCategory;
import wx.widgets.WxString;

class PropertyCategory extends PGProperty {
    public function new(label:String, name:String) {
        var strLabel = WxString.fromUTF8(label);
        var strName = WxString.fromUTF8(name);
        
        _ref = WxPropertyCategory.createInstance(strLabel, strName).reinterpret();
        
        super();
    }
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyCategoryRef(get, null):Pointer<PropertyCategory>;
    private function get_propertyCategoryRef():Pointer<PropertyCategory> {
       return _ref.reinterpret();
    }
}