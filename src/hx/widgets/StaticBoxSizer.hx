package hx.widgets;

import wx.widgets.StaticBoxSizer in WxStaticBoxSizer;
import wx.widgets.WxString;

class StaticBoxSizer extends BoxSizer {

    public function new(orient:Orientation = null, window:Window, title:String) {
        if (_ref == null) {
            var str = WxString.createInstance(title);
            _ref = WxStaticBoxSizer.createInstance(orient, Window.toRaw(window), str.ref).reinterpret();
            str.destroy();
        }

        super();
    }

}