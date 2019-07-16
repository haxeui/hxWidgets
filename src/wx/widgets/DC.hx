package wx.widgets;

@:include("wx/dcclient.h")
@:unreflective
@:native("wxDC")
@:structAccess
extern class DC extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
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

}
