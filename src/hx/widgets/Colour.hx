package hx.widgets;

import wx.widgets.Colour in WxColour;

class Colour {
    private var _ref:WxColour;

    public function new(colour:Int = 0x000000) {
        _ref = WxColour.createInstance(colour);
    }
    
    public function set(r:Int, g:Int, b:Int, a:Int) {
        _ref.set(r, g, b, a);
    }
}
