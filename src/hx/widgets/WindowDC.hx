package hx.widgets;

import cpp.Pointer;
import wx.widgets.WindowDC in WxWindowDC;

class WindowDC extends DC {

	@:access(hx.widgets.Window)
    public function new(window:Window) {
        super();
        if (window != null) {
            _ref = WxWindowDC.createInstance(Window.toRaw(window)).reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var windowDCRef(get, null):Pointer<WxWindowDC>;
    private function get_windowDCRef():Pointer<WxWindowDC> {
        return _ref.reinterpret();
    }

}
