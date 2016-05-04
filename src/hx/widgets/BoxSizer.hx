package hx.widgets;

import wx.widgets.BoxSizer in WxBoxSizer;

class BoxSizer extends Sizer {
    public function new(orient:Int) {
        super();
        _ref = WxBoxSizer.createInstance(orient);
    }
}