package hx.widgets;

import wx.widgets.Gauge in WxGauge;

class Gauge extends Window {
    public function new(parent:Window, range:Int = 100, id:Int = -1) {
        super(parent, id);
        
        var guageRef:WxGauge = WxGauge.createInstance();
        guageRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, range);
        _ref = guageRef;
    }
    
    public var value(get, set):Int;
    private function get_value():Int {
        return guageRef.getValue();
    }
    private function set_value(value:Int):Int {
        guageRef.setValue(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var guageRef(get, null):WxGauge;
    private inline function get_guageRef():WxGauge {
        return cast _ref;
    }
}
