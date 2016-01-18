package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Pen.WxPenRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:access(hx.widgets.Window)
@:access(hx.widgets.Pen)
class ClientDC {
    private var _ref:WxClientDCRef;
    public function new(window:Window) {
        _ref = WxClientDCRef.createInstance(window._ref);
    }
    
    public function clear() {
        _ref.clear();
    }
    
    public function drawLine(x1:Int, y1:Int, x2:Int, y2:Int) {
        _ref.drawLine(x1, y1, x2, y2);
    }
    
    public function setPen(pen:Pen):Void {
        _ref.setPen(pen._ref);
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

@:include("wx/dcclient.h")
@:native("cpp.Reference<wxClientDC>")
extern class WxClientDCRef extends WxClientDC {
    @:native("new wxClientDC")          public static function createInstance(window:WxWindowRef):WxClientDCRef;
}

@:include("wx/dcclient.h")
@:native("wxClientDC")
extern class WxClientDC {
    @:native("Clear")                   public function clear():Void;
    @:native("DrawLine")                public function drawLine(x1:Int, y1:Int, x2:Int, y2:Int):Void;
    @:native("SetPen")                  public function setPen(pen:WxPenRef):Void;
    @:native("DrawText")                public function drawText(text:ConstCharStar, x:Int, y:Int):Void;
    @:native("DrawRoundedRectangle")    public function drawRoundedRectangle(x:Int, y:Int, width:Int, height:Int, radius:Float):Void;
    @:native("DrawCircle")              public function drawCircle(x:Int, y:Int, radius:Int):Void;
}
