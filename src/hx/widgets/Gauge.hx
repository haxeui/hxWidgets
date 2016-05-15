package hx.widgets;

import cpp.Pointer;
import wx.widgets.Gauge in WxGauge;
import hx.widgets.styles.GaugeStyle;

class Gauge extends Control {

    public function new(parent:Window, range:Int = 100, style:Int = -1, id:Int = -1) {
        if (style == -1) {
            style = GaugeStyle.HORIZONTAL;
        }
        if (_ref == null) {
            _ref = WxGauge.createInstance().reinterpret();
            gaugeRef.ptr.create(Window.toRaw(parent), id, range, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var value(get, set):Int;
    private function get_value():Int {
        return gaugeRef.ptr.getValue();
    }
    private function set_value(value:Int):Int {
        gaugeRef.ptr.setValue(value);
        return value;
    }

    public function pulse() {
        gaugeRef.ptr.pulse();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var gaugeRef(get, null):Pointer<WxGauge>;
    private function get_gaugeRef():Pointer<WxGauge> {
        return _ref.reinterpret();
    }

}
