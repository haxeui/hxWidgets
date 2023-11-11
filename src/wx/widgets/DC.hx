package wx.widgets;

@:include("wx/dcclient.h")
@:unreflective
@:native("wxDC")
@:structAccess
extern class DC extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    @:native("CalcBoundingBox")         public function calcBoundingBox(x:Int, y:Int):Void;
    @:native("CanDrawBitmap")           public function canDrawBitmap():Bool;
    @:native("CanGetTextEvent")         public function canGetTextEvent():Bool;
    @:native("CanUserTransformMatrix")  public function canUserTransformMatrix():Bool;
    @:native("CopyAttributes")          public function copyAttributes(dc:DC):Void;
    @:native("CrossHair")               public function crossHair(x:Int, y:Int):Void;
    @:native("DestroyClippingRegion")   public function destroyClippingRegion():Void;
    @:native("DeviceToLogical")         public function deviceToLogical(x:Int, y:Int):Point;
    @:native("DeviceToLogicalRel")      public function deviceToLogicalRel(x:Int, y:Int):Size; 
    @:native("DrawArc")                 public function drawArc(xStart:Int, yStart:Int, xEnd:Int, yEnd:Int, xc:Int, yc:Int):Void;
    @:native("DrawCheckMark")           public function drawCheckMark(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("DrawEllipse")             public function drawEllipse(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("DrawIcon")                public function drawIcon(icon:Icon, x:Int, y:Int):Void;
    @:native("DrawPoint")               public function drawPoint(x:Int, y:Int):Void;
    @:native("DrawRectangle")           public function drawRectangle(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("GetPixel")                public function getPixel(x:Int, y:Int, colour:Colour):Bool;
    @:native("Clear")                   public function clear():Void;
    @:native("DrawLine")                public function drawLine(x1:Int, y1:Int, x2:Int, y2:Int):Void;
    @:native("SetPen")                  public function setPen(pen:Pen):Void;
    @:native("SetBrush")                public function setBrush(brush:Brush):Void;
    @:native("DrawText")                public function drawText(text:WxString, x:Int, y:Int):Void;
    @:native("DrawRoundedRectangle")    public function drawRoundedRectangle(x:Int, y:Int, width:Int, height:Int, radius:Float):Void;
    @:native("DrawCircle")              public function drawCircle(x:Int, y:Int, radius:Int):Void;
    @:native("GetBackground")           public function getBackground():Brush;
    @:native("SetBackground")           public function setBackground(brush:Brush):Void;
    @:native("DrawBitmap")              public function drawBitmap(bmp:Bitmap, x:Float, y:Float):Void;
    @:native("GetTextForeground")       public function getTextForeground():Colour;
    @:native("SetTextForeground")       public function setTextForeground(colour:Colour):Void;
    @:native("GetTextBackground")       public function getTextBackground():Colour;
    @:native("SetTextBackground")       public function setTextBackground(colour:Colour):Void;
    @:native("GradientFillLinear")      public function gradientFillLinear(rect:Rect, initialColour:Colour, destColour:Colour):Void;
}
