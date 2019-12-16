package hx.widgets;

import cpp.Pointer;
import wx.widgets.PGChoices in WxPGChoices;
import wx.widgets.WxString;

typedef PGChoiceEntry = {
    var label:String;
    @:optional var value:Null<Int>;
}

class PGChoices {
    private var _ref:Pointer<WxPGChoices>;
    
    public function new(items:Array<PGChoiceEntry> = null) {
        _ref = WxPGChoices.createInstance().reinterpret();
        
        if (items != null) {
            for (item in items) {
                var s = item.label;
                var v = item.value;
                if (v == null) {
                    v = 0;
                }
                add(s, v);
            }
        }
    }
    
    public function add(label:String, value:Int) {
        var strLabel = WxString.fromUTF8(label);
        choicesRef.ptr.add(strLabel, value);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var choicesRef(get, null):Pointer<WxPGChoices>;
    private function get_choicesRef():Pointer<WxPGChoices> {
        return _ref.reinterpret();
    }
}