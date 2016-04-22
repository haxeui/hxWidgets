package wx.widgets;
import cpp.ConstCharStar;


@:include("wx/graphics.h")
@:unreflective
@:native("cpp::Reference<wxGraphicsContext>")
extern class GraphicsContext extends GraphicsContextImpl {
     @:native("wxGraphicsContext::Create")          public static function createInstance(window:Window):GraphicsContext;
}

@:include("wx/graphics.h")
@:unreflective
@:native("wxGraphicsContext")
extern class GraphicsContextImpl {
    @:native("StrokeLine")              public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float):Void;
    @:native("SetPen")                  public function setPen(pen:Pen):Void;
    @:native("DrawText")                public function drawText(text:ConstCharStar, x:Float, y:Float):Void;
    @:native("DrawRoundedRectangle")    public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float):Void;
}
