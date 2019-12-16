package hx.widgets;

import cpp.Pointer;
import wx.widgets.EnumProperty in WxEnumProperty;
import wx.widgets.WxString;

typedef EnumPropertyItem = {
    var label:String;
    @:optional var value:Null<Int>;
}

class EnumProperty extends PGProperty {
    @:access(hx.widgets.PGChoices)
    public function new(label:String, name:String, choices:Array<EnumPropertyItem>, value:Int = 0 ) {
        var choices = new PGChoices(choices);
        
        var strLabel = WxString.fromUTF8(label);
        var strName = WxString.fromUTF8(name);
        
        var choicesRef = choices.choicesRef;
        
        _ref = WxEnumProperty.createInstance(strLabel, strName, choicesRef.ref, value).reinterpret();
        
        super();
    }
}