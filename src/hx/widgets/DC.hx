package hx.widgets;

import wx.widgets.DC in WxDC;

class DC {
    private var _ref:WxDC;

    public function new() {
    }
    
    public function clear() {
        _ref.clear();
    }
    
    public function drawLine(x1:Int, y1:Int, x2:Int, y2:Int) {
        _ref.drawLine(x1, y1, x2, y2);
    }

    @:access(hx.widgets.Pen)
    public function setPen(pen:Pen):Void {
        _ref.setPen(pen._ref);
    }
    
    @:access(hx.widgets.Brush)
    public function setBrush(brush:Brush):Void {
        _ref.setBrush(brush._ref);
    }
    
    public function drawText(text:String, x:Int, y:Int):Void {
        _ref.drawText(text, x, y);
    }
    
    public function drawRoundedRectangle(x:Int, y:Int, width:Int, height:Int, radius:Float):Void {
        _ref.drawRoundedRectangle(x, y, width, height, radius);
    }
    
    public function drawCircle(x:Int, y:Int, radius:Int):Void {
        _ref.drawCircle(x, y, radius);
    }
}
