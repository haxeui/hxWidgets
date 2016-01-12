package hx.widgets;

import hx.widgets.Point.WxPointRef;

class Point {
    private var _ref:WxPointRef;
    public function new(x:Int = 0, y:Int = 0) {
        _ref = WxPointRef.createInstance();
        _ref.x = x;
        _ref.y = y;
    }
    
    public var x(get, set):Int;
    private function get_x():Int {
        return _ref.x;
    }
    private function set_x(value:Int):Int {
        _ref.x = value;
        return value;
    }
    
    public var y(get, set):Int;
    private function get_y():Int {
        return _ref.y;
    }
    private function set_y(value:Int):Int {
        _ref.y = value;
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static var defaultPosition(get, null):Point;
    private static function get_defaultPosition():Point {
        return new Point(-1, -1);
    }
    
    public static var defaultPositionRef(get, null):WxPointRef;
    private static function get_defaultPositionRef():WxPointRef {
        return defaultPosition._ref;
    }
}

@:include("wx/gdicmn.h")
@:native("cpp.Reference<wxPoint>")
extern class WxPointRef extends WxPoint {
    @:native("new wxPoint")     public static function createInstance():WxPointRef;
}

@:include("wx/gdicmn.h")
@:native("wxPoint")
extern class WxPoint {
    @:native("x")               public var x:Int;
    @:native("y")               public var y:Int;
}
