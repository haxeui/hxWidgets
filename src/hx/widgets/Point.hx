package hx.widgets;

import cpp.Pointer;
import wx.widgets.Point in WxPoint;

class Point {
    private var _x:Int;
    private var _y:Int;
    
    public function new(x:Int = 0, y:Int = 0) {
        _x = x;
        _y = y;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var x(get, set):Int;
    private function get_x():Int {
        return _x;
    }
    private function set_x(value:Int):Int {
        _x = value;
        return value;
    }
    
    public var y(get, set):Int;
    private function get_y():Int {
        return _y;
    }
    private function set_y(value:Int):Int {
        _y = value;
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxPoint> {
        return WxPoint.createInstance(this.x, this.y);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private static var _defaultPosition:Pointer<WxPoint>; // create and hold our own versions of globals
    public static var defaultPosition(get, null):Pointer<WxPoint>;
    private static function get_defaultPosition():Pointer<WxPoint> {
        if (_defaultPosition == null) {
            _defaultPosition = WxPoint.createInstance(-1, -1);
        }
        return _defaultPosition;
    }
    
    public static function copy(ptr:Pointer<WxPoint>):Point {
        var c:Point = new Point(ptr.ref.x, ptr.ref.y);
        return c;
    }
}
/*
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
*/