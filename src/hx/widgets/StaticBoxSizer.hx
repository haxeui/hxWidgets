package hx.widgets;

import wx.widgets.StaticBoxSizer in WxStaticBoxSizer;
import wx.widgets.WxString;

class StaticBoxSizer extends BoxSizer {
    public function new(orient:Int, window:Window, title:String) {
        super(-1);
        var str = WxString.createInstance(title);
        _ref = WxStaticBoxSizer.createInstance(orient, Window.toRaw(window), str.ref);
        str.destroy();
        
    }
}