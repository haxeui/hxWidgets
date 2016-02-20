package hx.widgets;

import wx.widgets.Gauge in WxGauge;
import hx.widgets.styles.GaugeStyle;

class Gauge extends Control {
    public function new(parent:Window, range:Int = 100, style:Int = -1, id:Int = -1) {
        if (style == -1) {
            style = GaugeStyle.HORIZONTAL;
        }
        if (_ref == null) {
            var guageRef:WxGauge = WxGauge.createInstance();
            guageRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, range, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = guageRef;
        }
        
        super(parent, id);
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
