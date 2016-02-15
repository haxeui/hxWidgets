package hx.widgets;

import wx.widgets.Pen in WxPen;

class Pen {
    private var _ref:WxPen;

    public function new(colour:Int = 0x000000, width:Int = 1) {
        _ref = WxPen.createInstance();
        this.colour = colour;
        this.width = width;
    }
    
    public var colour(get, set):Int;
    private function get_colour():Int {
        return 0;
    }
    @:access(hx.widgets.Colour)
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
