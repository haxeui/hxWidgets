package hx.widgets;

import wx.widgets.CheckBox in WxCheckBox;

class CheckBox extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var checkboxRef:WxCheckBox = WxCheckBox.createInstance();
            checkboxRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = checkboxRef;
        }
        
        super(parent, id);
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
    private inline function get_checkboxRef():WxCheckBox {
        return cast _ref;
    }
}
