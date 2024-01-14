package hx.widgets;

import cpp.Pointer;
import wx.widgets.SpinCtrlDouble in WxSpinCtrlDouble;
import wx.widgets.WxString;

class SpinCtrlDouble extends Control {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxSpinCtrlDouble.createInstance().reinterpret();
            var str = WxString.fromUTF8(text);
            spinCtrlDoubleRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }
    
    public var value(get, set):Float;
    private function get_value():Float {
        return spinCtrlDoubleRef.ref.getValue();
    }
    private function set_value(value:Float):Float {
        spinCtrlDoubleRef.ref.setValue(value);
        return value;
    }
    
    public var min(get, set):Float;
    private function get_min():Float {
        return spinCtrlDoubleRef.ptr.getMin();
    }
    private function set_min(value:Float):Float {
        spinCtrlDoubleRef.ptr.setRange(value, max);
        return value;
    }

    public var max(get, set):Float;
    private function get_max():Float {
        return spinCtrlDoubleRef.ptr.getMax();
    }
    private function set_max(value:Float):Float {
        spinCtrlDoubleRef.ptr.setRange(min, value);
        return value;
    }

    public var digits(get, set):Int;
    private function get_digits():Int {
        return spinCtrlDoubleRef.ptr.getDigits();
    }
    private function set_digits(value:Int):Int {
        spinCtrlDoubleRef.ptr.setDigits(value);
        return value;
    }

    public var increment(get, set):Float;
    private function get_increment():Float {
        return spinCtrlDoubleRef.ptr.getIncrement();
    }
    private function set_increment(value:Float):Float {
        spinCtrlDoubleRef.ptr.setIncrement(value);
        return value;
    }
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var spinCtrlDoubleRef(get, null):Pointer<WxSpinCtrlDouble>;
    private function get_spinCtrlDoubleRef():Pointer<WxSpinCtrlDouble> {
       return _ref.reinterpret();
    }
}
