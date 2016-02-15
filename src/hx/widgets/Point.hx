package hx.widgets;

import wx.widgets.Point in WxPoint;

class Point {
    private var _ref:WxPoint;

    public function new(x:Int = 0, y:Int = 0) {
        _ref = WxPoint.createInstance();
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
    
    public static var defaultPositionRef(get, null):WxPoint;
    private static function get_defaultPositionRef():WxPoint {
        return defaultPosition._ref;
    }
}
