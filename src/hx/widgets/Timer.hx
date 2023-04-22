package hx.widgets;

import cpp.Pointer;
import wx.widgets.Timer in WxTimer;

class Timer extends EvtHandler {
    @:access(hx.widgets.Window)
    public function new(window:Window, milliseconds:Int = -1, oneShot:Bool = false, id:Int = -1) {
        super();
        if (window != null) {
            _ref = WxTimer.createInstance(Window.toRaw(window), id).reinterpret();
            if (milliseconds > -1) {
                start(milliseconds, oneShot);
            }
        }
    }

    public var id(get, null):Int;
    private function get_id():Int {
        return timerRef.ptr.getId();
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
