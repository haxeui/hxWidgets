package hx.widgets;
import hx.widgets.Colour.WxColourRef;

@:access(hx.widgets.Colour)
class Pen {
    private var _ref:WxPenRef;
    public function new(colour:Int = 0x000000, width:Int = 1) {
        _ref = WxPenRef.createInstance();
        this.colour = colour;
        this.width = width;
    }
    
    public var colour(get, set):Int;
    private function get_colour():Int {
        return 0;
    }
    private function set_colour(value:Int):Int {
        var c:Colour = new Colour(value);
        _ref.setColour(c._ref);
        return value;
    }
    
    public var width(get, set):Int;
    private function get_width():Int {
        return _ref.getWidth();
    }
    private function set_width(value:Int):Int {
        _ref.setWidth(value);
        return value;
    }
}

@:include("wx/pen.h")
@:native("cpp.Reference<wxPen>")
extern class WxPenRef extends WxPen {
    @:native("new wxPen")          public static function createInstance():WxPenRef;
}

@:include("wx/pen.h")
@:native("wxPen")
extern class WxPen {
    @:native("SetColour")          public function setColour(colour:WxColourRef):Void;
    @:native("GetWidth")           public function getWidth():Int;
    @:native("SetWidth")           public function setWidth(width:Int):Void;
}
