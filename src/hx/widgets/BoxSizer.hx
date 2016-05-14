package hx.widgets;

import wx.widgets.BoxSizer in WxBoxSizer;

class BoxSizer extends Sizer {

    public function new(orient:Orientation = null) {
        if (_ref == null) {
            _ref = WxBoxSizer.createInstance(orient);
        }

        super();
    }

}
