package hx.widgets;

import wx.widgets.RadioButton in WxRadioButton;

class RadioButton extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1)  {
        if (_ref == null) {       
            var radioRef:WxRadioButton = WxRadioButton.createInstance();
            radioRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = radioRef;
        }
        
        super(parent, id);
    }
    
    public var value(get, set):Bool;
    private function get_value():Bool {
        return radioRef.getValue();
    }
    private function set_value(value:Bool):Bool {
        radioRef.setValue(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var radioRef(get, null):WxRadioButton;
    private inline function get_radioRef():WxRadioButton {
        return cast _ref;
    }
}
