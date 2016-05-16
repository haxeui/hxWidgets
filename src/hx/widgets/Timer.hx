package hx.widgets;

import cpp.Pointer;
import wx.widgets.Timer in WxTimer;

class Timer extends EvtHandler {

    @:access(hx.widgets.Window)
    public function new(window:Window, milliseconds:Int = -1, oneShot:Bool = false, id:Int = -1) {
        _ref = WxTimer.createInstance(Window.toRaw(window), id).reinterpret();
        if (milliseconds > 0) {
            start(milliseconds, oneShot);
        }
    }

    public function start(milliseconds:Int, oneShot:Bool = false):Bool {
        return timerRef.ptr.start(milliseconds, oneShot);
    }

    public function stop() {
        timerRef.ptr.stop();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var timerRef(get, null):Pointer<WxTimer>;
    private function get_timerRef():Pointer<WxTimer> {
       return _ref.reinterpret();
    }

}
