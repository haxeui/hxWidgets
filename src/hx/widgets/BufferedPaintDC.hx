package hx.widgets;

import wx.widgets.BufferedPaintDC in WxBufferedPaintDC;

class BufferedPaintDC extends BufferedDC {

	@:access(hx.widgets.Window)
    public function new(window:Window) {
        super();
        if (window != null) {
            ///_ref = WxBufferedPaintDC.createInstance(window._ref);
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var bufferedDCRef(get, null):WxBufferedPaintDC;
    private function get_bufferedDCRef():WxBufferedPaintDC {
        return cast _ref;
    }

}
