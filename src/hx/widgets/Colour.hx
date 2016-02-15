package hx.widgets;

import wx.widgets.Colour in WxColour;

class Colour {
    private var _ref:WxColour;

    public function new(colour:Int) {
        _ref = WxColour.createInstance(colour);
    }
}
