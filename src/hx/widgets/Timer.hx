package hx.widgets;

import hx.widgets.EvtHandler.WxEvtHandlerRef;
import hx.widgets.Timer.WxTimerRef;
import hx.widgets.Window.WxWindowRef;

@:access(hx.widgets.EvtHandler)
class Timer {
    private var _ref:WxTimerRef;
    
    public function new(window:Window, milliseconds:Int = -1, oneShot:Bool = false) {
        _ref = WxTimerRef.createInstance(window._ref);
        if (milliseconds > 0) {
            start(milliseconds, oneShot);
        }
    }
    
    public function start(milliseconds:Int, oneShot:Bool = false) {
        return _ref.start(milliseconds, oneShot);
    }
    
    public function stop() {
        _ref.stop();
    }
}

@:include("wx/timer.h")
@:unreflective
@:native("cpp::Reference<wxTimer>")
extern class WxTimerRef extends WxTimer {
    @:native("new wxTimer")    public static function createInstance(owner:WxWindowRef):WxTimerRef;
}

@:include("wx/timer.h")
@:unreflective
@:native("wxTimer")
extern class WxTimer {
    @:native("Start")           public function start(milliseconds:Int, oneShot:Bool = false):Bool;
    @:native("Stop")            public function stop():Void;
}
