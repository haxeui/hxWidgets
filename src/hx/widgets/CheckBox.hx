package hx.widgets;

import wx.widgets.CheckBox in WxCheckBox;

class CheckBox extends Window {
    public function new(parent:Window, label:String, id:Int = -1) {
        super(parent, id);
        
        var checkboxRef:WxCheckBox = WxCheckBox.createInstance();
        checkboxRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label);
        _ref = cast checkboxRef;
    }
    
    public var value(get, set):Bool;
    private function get_value():Bool {
        return checkboxRef.getValue();
    }
    private function set_value(value:Bool):Bool {
        checkboxRef.setValue(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var checkboxRef(get, null):WxCheckBox;
    private function get_checkboxRef():WxCheckBox {
        return cast _ref;
    }
}
