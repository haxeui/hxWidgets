package hx.widgets;

import wx.widgets.BoxSizer in WxBoxSizer;

class BoxSizer extends Sizer {
    public function new(orient:Int) {
        super();
        if (orient == Orientation.VERTICAL || orient == Orientation.HORIZONTAL) {
            _ref = WxBoxSizer.createInstance(orient);
        }
    }
}