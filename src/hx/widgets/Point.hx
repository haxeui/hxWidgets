package hx.widgets;

import cpp.Pointer;
import wx.widgets.Point in WxPoint;

@:unreflective
class Point {

    public var x:Int;
    public var y:Int;

    public function new(x:Int = 0, y:Int = 0) {
        this.x = x;
        this.y = y;
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
    @:isVar public static var defaultPosition(get, null):Pointer<WxPoint>;
    private static function get_defaultPosition():Pointer<WxPoint> {
        if (defaultPosition == null) {
            defaultPosition = WxPoint.createInstance(-1, -1);
        }
        return defaultPosition;
    }

    public static function copy(other:WxPoint):Point {
        var c:Point = new Point(other.x, other.y);
        return c;
    }

}
