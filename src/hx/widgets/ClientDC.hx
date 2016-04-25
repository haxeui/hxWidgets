package hx.widgets;

import wx.widgets.ClientDC in WxClientDC;

class ClientDC extends WindowDC {
	@:access(hx.widgets.Window)
    public function new(window:Window) {
        super(null);
        _ref = cast WxClientDC.createInstance(window._ref);
    }
}
