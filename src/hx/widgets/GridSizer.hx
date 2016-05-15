package hx.widgets;

import wx.widgets.GridSizer in WxGridSizer;

class GridSizer extends Sizer {

    public function new(cols:Int, vgap:Int = 0, hgap:Int = 0) {
        super();
        _ref = WxGridSizer.createInstance(cols, vgap, hgap);
    }

}
