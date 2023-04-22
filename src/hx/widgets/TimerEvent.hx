package hx.widgets;

import cpp.RawPointer;
import cpp.Pointer;
import wx.widgets.TimerEvent in WxTimerEvent;
import wx.widgets.Timer in WxTimer;

class TimerEvent extends Event {
    public var timer(get, null):Timer;
    private function get_timer():Timer {
        var timerRef = timerEventRef.ptr.getTimer();
        var timer = new Timer(null);
        var raw:RawPointer<WxTimer> = RawPointer.addressOf(timerRef);
        @:privateAccess timer._ref = Pointer.fromRaw(raw).reinterpret();
        return timer;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var timerEventRef(get, null):Pointer<WxTimerEvent>;
    private function get_timerEventRef():Pointer<WxTimerEvent> {
        return _ref.reinterpret();
    }
}