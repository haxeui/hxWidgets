package hx.widgets;

import wx.widgets.Gauge in WxGauge;
import hx.widgets.styles.GaugeStyle;

class Gauge extends Control {
    public function new(parent:Window, range:Int = 100, style:Int = -1, id:Int = -1) {
        if (style == -1) {
            style = GaugeStyle.HORIZONTAL;
        }
        if (_ref == null) {
            var gaugeRef:WxGauge = WxGauge.createInstance();
            gaugeRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, range, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = gaugeRef;
        }
        
        super(parent, id);
    }
    
    public var value(get, set):Int;
    private function get_value():Int {
        return gaugeRef.getValue();
    }
    private function set_value(value:Int):Int {
        gaugeRef.setValue(value);
        return value;
    }
    
    public function pulse() {
        gaugeRef.pulse();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var gaugeRef(get, null):WxGauge;
    private inline function get_gaugeRef():WxGauge {
        return cast _ref;
    }
}
