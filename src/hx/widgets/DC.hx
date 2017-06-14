package hx.widgets;

import cpp.Pointer;
import wx.widgets.DC in WxDC;
import wx.widgets.WxString;

class DC extends Object {

    public function new() {
    }

    public function clear() {
        dcRef.ptr.clear();
    }

    public function drawLine(x1:Int, y1:Int, x2:Int, y2:Int) {
        dcRef.ptr.drawLine(x1, y1, x2, y2);
    }

    @:access(hx.widgets.Pen)
    public function setPen(pen:Pen) {
        dcRef.ptr.setPen(pen.penRef.ref);
    }

    @:access(hx.widgets.Brush)
    public function setBrush(brush:Brush) {
        dcRef.ptr.setBrush(brush.brushRef.ref);
    }

    public function drawText(text:String, x:Int, y:Int) {
        var str = WxString.fromUTF8(text);
        dcRef.ptr.drawText(str, x, y);
    }

    public function drawRoundedRectangle(x:Int, y:Int, width:Int, height:Int, radius:Float) {
        dcRef.ptr.drawRoundedRectangle(x, y, width, height, radius);
    }

    public function drawCircle(x:Int, y:Int, radius:Int) {
        dcRef.ptr.drawCircle(x, y, radius);
    }

    public var background(null, set):Brush;
    @:access(hx.widgets.Brush)
    private function set_background(value:Brush):Brush {
        dcRef.ptr.setBackground(value.brushRef.ref);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dcRef(get, null):Pointer<WxDC>;
    private function get_dcRef():Pointer<WxDC> {
        return _ref.reinterpret();
    }

}
