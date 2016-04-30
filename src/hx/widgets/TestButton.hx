package hx.widgets;

import cpp.Pointer;
import wx.widgets.TestButton in WxTestButton;

class TestButton extends TestWindow {
    @:access(hx.widgets.Window)
    public function new(win:Window) {
        super(win);
        _ref = cast WxTestButton.createInstance();
        var tmp:Pointer<WxTestButton> = cast _ref;
        tmp.ptr.create(win._ref, 100, "test");
        //_ref.ref.create(win._ref, 100, "test");
    }
}