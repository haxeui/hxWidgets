package hx.widgets;

import cpp.Pointer;
import wx.widgets.WindowDC in WxWindowDC;

class WindowDC extends DC {

	@:access(hx.widgets.Window)
    public function new(window:Window) {
        super();
        if (window != null) {
            _ref = WxWindowDC.createInstance(Window.toRaw(window));
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var windowDCRef(get, null):Pointer<WxWindowDC>;
    private function get_windowDCRef():Pointer<WxWindowDC> {
        return Pointer.fromRaw(untyped __cpp__("(wxWindowDC*)(_ref->get_raw())"));
    }

}
