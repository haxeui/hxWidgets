package hx.widgets;

import cpp.Pointer;
import wx.widgets.GraphicsContext in WxGraphicsContext;
import wx.widgets.Font in WxFont;
import wx.widgets.Colour in WxColour;

@:unreflective
class GraphicsContext {
    private var _ref:Pointer<WxGraphicsContext>;

    @:access(hx.widgets.Window)
    public function new(window:Window = null) {
        if (window != null) {
            _ref = WxGraphicsContext.createInstance(Window.toRaw(window));
        }
    }

    public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float) {
        _ref.ptr.strokeLine(x1, y1, x2, y2);
    }

    public var pen(null, set):Pen;
    @:access(hx.widgets.Pen)
    private function set_pen(value:Pen):Pen {
        _ref.ptr.setPen(value._ref.ref);
        return value;
    }

    public var brush(null, set):Brush;
    @:access(hx.widgets.Brush)
    private function set_brush(value:Brush):Brush {
        _ref.ptr.setBrush(value._ref.ref);
        return value;
    }

    public function drawText(text:String, x:Float, y:Float):Void {
        _ref.ptr.drawText(text, x, y);
    }

    public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float):Void {
        _ref.ptr.drawRoundedRectangle(x, y, width, height, radius);
    }

    @:access(hx.widgets.Bitmap)
    public function drawBitmap(bmp:Bitmap, x:Float = 0, y:Float = 0, width:Float = -1, height:Float = -1):Void {
        if (width == -1) {
            width = bmp.width;
        }
        if (height == -1) {
            height = bmp.height;
        }
        _ref.ptr.drawBitmap(bmp._ref.ref, x, y, width, height);
    }

    public var antialiasMode(null, set):AntialiasMode;
    private function set_antialiasMode(value:AntialiasMode):AntialiasMode {
        #if (haxe_ver >= 3.3)
        _ref.ptr.setAntialiasMode(value);
        #else
        _ref.ptr.setAntialiasMode(untyped __cpp__("((wxAntialiasMode)value)"));
        #end
        return value;
    }

    public var interpolationQuality(null, set):InterpolationQuality;
    private function set_interpolationQuality(value:InterpolationQuality):InterpolationQuality {
        #if (haxe_ver >= 3.3)
        _ref.ptr.setInterpolationQuality(value);
        #else
        _ref.ptr.setInterpolationQuality(untyped __cpp__("((wxInterpolationQuality)value)"));
        #end
        return value;
    }

    @:access(hx.widgets.Font)
    @:access(hx.widgets.Colour)
    public function setFont(font:Font, color:Int = 0):Void {
        var p1:Pointer<WxFont> = font.createPointer();
        var c:Colour = new Colour(color);
        var p2:Pointer<WxColour> = c.createPointer();
        _ref.ptr.setFont(p1.ref, p2.ref);
        p1.destroy();
        p2.destroy();
    }
}