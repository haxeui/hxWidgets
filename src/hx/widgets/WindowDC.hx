package hx.widgets;

import wx.widgets.WindowDC in WxWindowDC;

class WindowDC extends DC {
    
	@:access(hx.widgets.Window)
    public function new(window:Window) {
        super();
        if (window != null) {
            _ref = WxWindowDC.createInstance(window._ref);
        }
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var windowDCRef(get, null):WxWindowDC;
    private function get_windowDCRef():WxWindowDC {
        return cast _ref;
    }
}