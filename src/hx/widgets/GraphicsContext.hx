package hx.widgets;

import cpp.Pointer;
import wx.widgets.GraphicsContext in WxGraphicsContext;
import wx.widgets.GraphicsPath in WxGraphicsPath;
import wx.widgets.Font in WxFont;
import wx.widgets.Colour in WxColour;
import wx.widgets.WxString;

class GraphicsContext extends GraphicsObject {

    @:access(hx.widgets.Window)
    public function new(window:Window = null, dc:WindowDC = null) {
        if (window != null) {
            _ref = WxGraphicsContext.createInstance(Window.toRaw(window)).reinterpret();
        }
        if (dc != null) {
            _ref = WxGraphicsContext.createInstanceFromDC(dc._ref.rawCast()).reinterpret();
        }
    }

    public function createPath():GraphicsPath {
        var graphicsPath = new GraphicsPath();
        return graphicsPath;
    }

    @:access(hx.widgets.GraphicsPath)
    public function strokeFillPath(path:GraphicsPath, stroke:Bool = true, fill:Bool = true) {
        var nativePath = graphicscontextRef.ptr.createPath();
        for (call in path.calls) {
            switch (call) {
                case moveToPoint(x, y):
                    nativePath.moveToPoint(x, y);
                case addArcToPoint(x1, y1, x2, y2, r):
                    nativePath.addArcToPoint(x1, y1, x2, y2, r);
                case addCircle(x, y, r):
                    nativePath.addCircle(x, y, r);
                case addCurveToPoint(cx1, cy1, cx2, cy2, x, y):    
                    nativePath.addCurveToPoint(cx1, cy1, cx2, cy2, x, y);
                case addQuadCurveToPoint(cx, cy, x, y):    
                    nativePath.addQuadCurveToPoint(cx, cy, x, y);
                case addEllipse(x, y, w, h):
                    nativePath.addEllipse(x, y, w, h);
                case addLineToPoint(x, y):
                    nativePath.addLineToPoint(x, y);
                case addRectangle(x, y, w, h):
                    nativePath.addRectangle(x, y, w, h);
                case addRoundedRectangle(x, y, w, h, r):
                    nativePath.addRoundedRectangle(x, y, w, h, r);
                case addArc(x, y, r, startAngle, endAngle, clockwise):
                    nativePath.addArc(x, y, r, startAngle, endAngle, clockwise);
                case closeSubpath:
                    nativePath.closeSubpath();
            }

        }
        if (stroke) graphicscontextRef.ptr.strokePath(nativePath);
        if (fill) graphicscontextRef.ptr.fillPath(nativePath);
    }

    public function strokePath(path:GraphicsPath) {
        strokeFillPath(path, true, false);
    }

    public function fillPath(path:GraphicsPath) {
        strokeFillPath(path, false, true);
    }

    public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float) {
        graphicscontextRef.ptr.strokeLine(x1, y1, x2, y2);
    }

    public var pen(null, set):Pen;
    @:access(hx.widgets.Pen)
    private function set_pen(value:Pen):Pen {
        graphicscontextRef.ptr.setPen(value.penRef.ref);
        return value;
    }

    public var brush(null, set):Brush;
    @:access(hx.widgets.Brush)
    private function set_brush(value:Brush):Brush {
        graphicscontextRef.ptr.setBrush(value.brushRef.ref);
        return value;
    }

    public function drawText(text:String, x:Float, y:Float) {
        var str = WxString.fromUTF8(text);
        graphicscontextRef.ptr.drawText(str, x, y);
    }

    public function drawRectangle(x:Int, y:Int, width:Int, height:Int) {
        graphicscontextRef.ptr.drawRectangle(x, y, width, height);
    }

    public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float) {
        graphicscontextRef.ptr.drawRoundedRectangle(x, y, width, height, radius);
    }

    @:access(hx.widgets.Bitmap)
    public function drawBitmap(bmp:Bitmap, x:Float = 0, y:Float = 0, width:Float = -1, height:Float = -1) {
        if (width == -1) {
            width = bmp.width;
        }
        if (height == -1) {
            height = bmp.height;
        }
        graphicscontextRef.ptr.drawBitmap(bmp.bitmapRef.ref, x, y, width, height);
    }

    public var antialiasMode(null, set):AntialiasMode;
    private function set_antialiasMode(value:AntialiasMode):AntialiasMode {
        graphicscontextRef.ptr.setAntialiasMode(value);
        return value;
    }

    public var interpolationQuality(null, set):InterpolationQuality;
    private function set_interpolationQuality(value:InterpolationQuality):InterpolationQuality {
        graphicscontextRef.ptr.setInterpolationQuality(value);
        return value;
    }

    @:access(hx.widgets.Font)
    @:access(hx.widgets.Colour)
    public function setFont(font:Font, color:Int = 0) {
        var p1:Pointer<WxFont> = font.createPointer();
        var c:Colour = new Colour(color);
        var p2:Pointer<WxColour> = c.createPointer();
        graphicscontextRef.ptr.setFont(p1.ref, p2.ref);
        p1.destroy();
        p2.destroy();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var graphicscontextRef(get, null):Pointer<WxGraphicsContext>;
    private function get_graphicscontextRef():Pointer<WxGraphicsContext> {
        return _ref.reinterpret();
    }

}
