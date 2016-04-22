package hx.widgets;

import wx.widgets.GraphicsContext in WxGraphicsContext;

class GraphicsContext {
    private var _ref:WxGraphicsContext;
    
    @:access(hx.widgets.Window)
    public function new(window:Window) {
        _ref = WxGraphicsContext.createInstance(window._ref);
    }
    
    public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float) {
        _ref.strokeLine(x1, y1, x2, y2);
    }

    @:access(hx.widgets.Pen)
    public function setPen(pen:Pen):Void {
        _ref.setPen(pen._ref);
    }
    
    public function drawText(text:String, x:Float, y:Float):Void {
        _ref.drawText(text, x, y);
    }
    
    public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float):Void {
        _ref.drawRoundedRectangle(x, y, width, height, radius);
    }
}