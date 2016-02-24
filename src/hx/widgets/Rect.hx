package hx.widgets;

import wx.widgets.Rect in WxRect;

class Rect {
    private var _ref:WxRect;
    
    public function new(width:Int = 0, height:Int = 0) {
        _ref = WxSize.createInstance();
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
}