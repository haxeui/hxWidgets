package hx.widgets;

import wx.widgets.PaintDC in WxPaintDC;

class PaintDC extends ClientDC {
    @:access(hx.widgets.Window)
    public function new(window:Window) {
        if (_ref == null) {
            _ref = WxPaintDC.createInstance(Window.toRaw(window)).reinterpret();
        }
        super(window);
    }
}