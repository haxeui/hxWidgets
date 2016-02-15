package hx.widgets;

import wx.widgets.RadioButton in WxRadioButton;

class RadioButton extends Window {
    public function new(parent:Window, title:String, style:Int = 0, id:Int = -1)  {
        super(parent, id);
        
        var radioRef:WxRadioButton = WxRadioButton.createInstance();
        radioRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = cast radioRef;
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
    private function get_radioRef():WxRadioButton {
        return cast _ref;
    }
}
