package hx.widgets;

import wx.widgets.ClientDC in WxClientDC;

class ClientDC extends WindowDC {

    @:access(hx.widgets.Window)
    public function new(window:Window) {
        if (_ref == null) {
            _ref = WxClientDC.createInstance(Window.toRaw(window)).reinterpret();
        }
        super(window);
    }

}
