package hx.widgets;

import wx.widgets.Brush in WxBrush;

class Brush {
    private var _ref:WxBrush;

    public function new(colour:Int = 0x000000) {
        _ref = WxBrush.createInstance();
        this.colour = colour;
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
    
    @:access(hx.widgets.Colour)
    public function setRGBA(r:Int, g:Int, b:Int, a:Int) {
        var c:Colour = new Colour();
        c.set(r, g, b, a);
        _ref.setColour(c._ref);
    }
}
