package hx.widgets;

import cpp.Pointer;
import wx.widgets.ColourProperty in WxColourProperty;
import wx.widgets.WxString;

class ColourProperty extends PGProperty {
    public function new(label:String, name:String, color:Int = 0xffffff) {
        var strLabel = WxString.fromUTF8(label);
        var strName = WxString.fromUTF8(name);
        var col = new Colour(color);
        
        _ref = WxColourProperty.createInstance(strLabel, strName, col.createPointer().ref).reinterpret();
        col.destroy();

        super();
    }
}