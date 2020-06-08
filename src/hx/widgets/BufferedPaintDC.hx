package hx.widgets;

import cpp.Pointer;
import wx.widgets.BufferedPaintDC in WxBufferedPaintDC;

class BufferedPaintDC extends BufferedDC {

    @:access(hx.widgets.Window)
    public function new(window:Window) {
        _ref = WxBufferedPaintDC.createInstance(Window.toRaw(window)).reinterpret();
        super();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var bufferedDCRef(get, null):Pointer<WxBufferedPaintDC>;
    private function get_bufferedDCRef():Pointer<WxBufferedPaintDC> {
        return _ref.reinterpret();
    }

}
