package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/dcclient.h")
@:unreflective
@:native("cpp::Reference<wxClientDC>")
extern class ClientDC extends ClientDCImpl {
    @:native("new wxClientDC")          public static function createInstance(window:Window):ClientDC;
}

@:include("wx/dcclient.h")
@:unreflective
@:native("wxClientDC")
extern class ClientDCImpl {
    @:native("Clear")                   public function clear():Void;
    @:native("DrawLine")                public function drawLine(x1:Int, y1:Int, x2:Int, y2:Int):Void;
    @:native("SetPen")                  public function setPen(pen:Pen):Void;
    @:native("SetBrush")                public function setBrush(brush:Brush):Void;
    @:native("DrawText")                public function drawText(text:ConstCharStar, x:Int, y:Int):Void;
    @:native("DrawRoundedRectangle")    public function drawRoundedRectangle(x:Int, y:Int, width:Int, height:Int, radius:Float):Void;
    @:native("DrawCircle")              public function drawCircle(x:Int, y:Int, radius:Int):Void;
}
