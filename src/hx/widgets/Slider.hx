package hx.widgets;

import hx.widgets.styles.SliderStyle;
import wx.widgets.Slider in WxSlider;

class Slider extends Window {
    public function new(parent:Window, value:Int = 0, min:Int = 0, max:Int = 100, style:Int = -1, id:Int = -1) {
        super(parent, id);

        if (style == -1) {
            style = SliderStyle.DEFAULT;
        }
        
        var sliderRef:WxSlider = WxSlider.createInstance();
        sliderRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, value, min, max, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = sliderRef;
    }
    
    public var value(get, set):Int;
    private function get_value():Int {
        return sliderRef.getValue();
    }
    private function set_value(value:Int):Int {
        sliderRef.setValue(value);
        return value;
    }

    public var min(get, set):Int;
    private function get_min():Int {
        return sliderRef.getMin();
    }
    private function set_min(value:Int):Int {
        sliderRef.setMin(value);
        return value;
    }

    public var max(get, set):Int;
    private function get_max():Int {
        return sliderRef.getMax();
    }
    private function set_max(value:Int):Int {
        sliderRef.setMax(value);
        return value;
    }
    
    public function setSelection(startPos:Int, endPos:Int) {
        sliderRef.setSelection(startPos, endPos);
    }
    
    public var selectionStart(get, set):Int;
    private function get_selectionStart():Int {
        return sliderRef.getSelStart();
    }
    private function set_selectionStart(value:Int):Int {
        setSelection(value, selectionEnd);
        return value;
    }

    public var selectionEnd(get, set):Int;
    private function get_selectionEnd():Int {
        return sliderRef.getSelEnd();
    }
    private function set_selectionEnd(value:Int):Int {
        setSelection(selectionStart, value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var sliderRef(get, null):WxSlider;
    private inline function get_sliderRef():WxSlider {
        return cast _ref;
    }
}
