package hx.widgets;

import cpp.Pointer;
import wx.widgets.TestWindow in WxTestWindow;

class TestWindow {
    private var _ref:Pointer<WxTestWindow>;
    @:access(hx.widgets.Window)
    public function new(win:Window) {
        _ref = WxTestWindow.createInstance();
    }

    public function setLabel(v:String) {
        _ref.ptr.setLabel(v);
    }
    
}