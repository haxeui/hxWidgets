package hx.widgets;

import wx.widgets.GraphicsContext in WxGraphicsContext;

class GraphicsContext {
    private var _ref:WxGraphicsContext;
    
    @:access(hx.widgets.ClientDC)
    public function new(dc:ClientDC) {
        _ref = WxGraphicsContext.createInstance(dc._ref);
    }
    
    public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float) {
        _ref.strokeLine(x1, y1, x2, y2);
    }

    @:access(hx.widgets.Pen)
    public function setPen(pen:Pen):Void {
        _ref.setPen(pen._ref);
    }
    
    @:access(hx.widgets.Brush)
    public function setBrush(brush:Brush):Void {
        _ref.setBrush(brush._ref);
    }
    
    @:access(hx.widgets.Font)
    @:access(hx.widgets.Colour)
    public function setFont(font:Font, color:Int = 0):Void {
        var c:Colour = new Colour(color);
        _ref.setFont(font._ref, c._ref);
    }
    
    public function drawText(text:String, x:Float, y:Float):Void {
        _ref.drawText(text, x, y);
    }
    
    public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float):Void {
        _ref.drawRoundedRectangle(x, y, width, height, radius);
    }
    
    @:access(hx.widgets.Bitmap)
    public function drawBitmap(bmp:Bitmap, x:Float = 0, y:Float = 0, width:Float = -1, height:Float = -1):Void {
        if (width == -1) {
            width = bmp.getWidth();
        }
        if (height == -1) {
            height = bmp.getHeight();
        }
        _ref.drawBitmap(bmp._ref, x, y, width, height);
    }
}