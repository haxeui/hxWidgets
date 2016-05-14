package hx.widgets;

import cpp.Pointer;
import wx.widgets.Timer in WxTimer;

class Timer {

    private var _ref:Pointer<WxTimer>;

    @:access(hx.widgets.Window)
    public function new(window:Window, milliseconds:Int = -1, oneShot:Bool = false, id:Int = -1) {
        _ref = WxTimer.createInstance(Window.toRaw(window), id);
        if (milliseconds > 0) {
            start(milliseconds, oneShot);
        }
    }

    public function start(milliseconds:Int, oneShot:Bool = false):Bool {
        return _ref.ptr.start(milliseconds, oneShot);
    }

    public function stop() {
        _ref.ptr.stop();
    }

}
