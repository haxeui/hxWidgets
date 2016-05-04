package hx.widgets;

import cpp.Pointer;
import wx.widgets.Rect in WxRect;

class Rect {
    private var _x:Int;
    private var _y:Int;
    private var _width:Int;
    private var _height:Int;
    
    public function new(x:Int = 0, y:Int = 0, width:Int = 0, height:Int = 0) {
        _x = x;
        _y = y;
        _width = width;
        _height = height;
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
    
    public var width(get, set):Int;
    private function get_width():Int {
        return _width;
    }
    private function set_width(value:Int):Int {
        _width = value;
        return value;
    }
    
    public var height(get, set):Int;
    private function get_height():Int {
        return _height;
    }
    private function set_height(value:Int):Int {
        _height = value;
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxRect> {
        return WxRect.createInstance(this._x, this._y, this._width, this._height);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function copy(ptr:Pointer<WxRect>):Rect {
        var c:Rect = new Rect(ptr.ref.getX(), ptr.ref.getY(), ptr.ref.getWidth(), ptr.ref.getHeight());
        return c;
    }
}
