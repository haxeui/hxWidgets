package hx.widgets;

import wx.widgets.Rect in WxRect;

class Rect {
    private var _ref:WxRect;
    
    public function new(x:Int = 0, y:Int = 0, width:Int = 0, height:Int = 0) {
        _ref = WxRect.createInstance();
        _ref.setX(x);
        _ref.setY(y);
        _ref.setWidth(width);
        _ref.setHeight(height);
    }
    
    public var width(get, set):Int;
    private function get_width():Int {
        return _ref.getWidth();
    }
    private function set_width(value:Int):Int {
        _ref.setWidth(value);
        return value;
    }
    
    public var height(get, set):Int;
    private function get_height():Int {
        return _ref.getHeight();
    }
    private function set_height(value:Int):Int {
        _ref.setHeight(value);
        return value;
    }
    
    public var x(get, set):Int;
    private function get_x():Int {
        return _ref.getX();
    }
    private function set_x(value:Int):Int {
        _ref.setX(value);
        return value;
    }
    
    public var y(get, set):Int;
    private function get_y():Int {
        return _ref.getY();
    }
    private function set_y(value:Int):Int {
        _ref.setY(value);
        return value;
    }
}