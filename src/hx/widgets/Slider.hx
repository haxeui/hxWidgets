package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.SliderStyle;
import wx.widgets.Slider in WxSlider;

class Slider extends Control {

    public function new(parent:Window, value:Int = 0, min:Int = 0, max:Int = 100, style:Int = -1, id:Int = -1) {
        if (style == -1) {
            style = SliderStyle.DEFAULT;
        }

        if (_ref == null) {
            _ref = WxSlider.createInstance().reinterpret();
            sliderRef.ptr.create(Window.toRaw(parent), id, value, min, max, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var value(get, set):Int;
    private function get_value():Int {
        return sliderRef.ptr.getValue();
    }
    private function set_value(value:Int):Int {
        sliderRef.ptr.setValue(value);
        return value;
    }

    public var min(get, set):Int;
    private function get_min():Int {
        return sliderRef.ptr.getMin();
    }
    private function set_min(value:Int):Int {
        sliderRef.ptr.setMin(value);
        return value;
    }

    public var max(get, set):Int;
    private function get_max():Int {
        return sliderRef.ptr.getMax();
    }
    private function set_max(value:Int):Int {
        sliderRef.ptr.setMax(value);
        return value;
    }

    public function setSelection(startPos:Int, endPos:Int) {
        sliderRef.ptr.setSelection(startPos, endPos);
    }

    public var selectionStart(get, set):Int;
    private function get_selectionStart():Int {
        return sliderRef.ptr.getSelStart();
    }
    private function set_selectionStart(value:Int):Int {
        setSelection(value, selectionEnd);
        return value;
    }

    public var selectionEnd(get, set):Int;
    private function get_selectionEnd():Int {
        return sliderRef.ptr.getSelEnd();
    }
    private function set_selectionEnd(value:Int):Int {
        setSelection(selectionStart, value);
        return value;
    }

    public var tickFreq(get, set):Int;
    private function get_tickFreq():Int {
        return sliderRef.ptr.getTickFreq();
    }
    private function set_tickFreq(value:Int):Int {
        sliderRef.ptr.setTickFreq(value);
        return value;
    }

    public var lineSize(get, set):Int;
    private function get_lineSize():Int {
        return sliderRef.ptr.getLineSize();
    }
    private function set_lineSize(value:Int):Int {
        sliderRef.ptr.setLineSize(value);
        return value;
    }

    public var pageSize(get, set):Int;
    private function get_pageSize():Int {
        return sliderRef.ptr.getPageSize();
    }
    private function set_pageSize(value:Int):Int {
        sliderRef.ptr.setPageSize(value);
        return value;
    }

    public var thumbLength(get, set):Int;
    private function get_thumbLength():Int {
        return sliderRef.ptr.getThumbLength();
    }
    private function set_thumbLength(value:Int):Int {
        sliderRef.ptr.setThumbLength(value);
        return value;
    }

    private function setTick(value:Int):Int {
        sliderRef.ptr.setTick(value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helper
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var sliderRef(get, null):Pointer<WxSlider>;
    private function get_sliderRef():Pointer<WxSlider> {
        return _ref.reinterpret();
    }

}
