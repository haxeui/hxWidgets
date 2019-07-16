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

    public var pen(null, set):Pen;
    @:access(hx.widgets.Pen)
    private function set_pen(value:Pen):Pen {
        dcRef.ptr.setPen(value.penRef.ref);
        return value;
    }

    public var brush(null, set):Brush;
    @:access(hx.widgets.Brush)
    private function set_brush(value:Brush):Brush {
        dcRef.ptr.setBrush(value.brushRef.ref);
        return value;
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

    @:access(hx.widgets.Bitmap)
    public function drawBitmap(bmp:Bitmap, x:Float = 0, y:Float = 0) {
        dcRef.ptr.drawBitmap(bmp.bitmapRef.ref, x, y);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dcRef(get, null):Pointer<WxDC>;
    private function get_dcRef():Pointer<WxDC> {
        return _ref.reinterpret();
    }

}
