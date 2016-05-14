package hx.widgets;

import cpp.Pointer;
import wx.widgets.DC in WxDC;
import wx.widgets.WxString;

class DC {

    private var _ref:Pointer<WxDC>;

    public function new() {
    }

    public function clear() {
        _ref.ptr.clear();
    }

    public function drawLine(x1:Int, y1:Int, x2:Int, y2:Int) {
        _ref.ptr.drawLine(x1, y1, x2, y2);
    }

    @:access(hx.widgets.Pen)
    public function setPen(pen:Pen) {
        _ref.ptr.setPen(pen._ref.ref);
    }

    @:access(hx.widgets.Brush)
    public function setBrush(brush:Brush) {
        _ref.ptr.setBrush(brush._ref.ref);
    }

    public function drawText(text:String, x:Int, y:Int) {
        var str = WxString.createInstance(text);
        _ref.ptr.drawText(str.ref, x, y);
        str.destroy();
    }

    public function drawRoundedRectangle(x:Int, y:Int, width:Int, height:Int, radius:Float) {
        _ref.ptr.drawRoundedRectangle(x, y, width, height, radius);
    }

    public function drawCircle(x:Int, y:Int, radius:Int) {
        _ref.ptr.drawCircle(x, y, radius);
    }

    public var background(null, set):Brush;
    @:access(hx.widgets.Brush)
    private function set_background(value:Brush):Brush {
        _ref.ptr.setBackground(value._ref.ref);
        return value;
    }

}
