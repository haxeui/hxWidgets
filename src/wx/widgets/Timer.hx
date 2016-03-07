package wx.widgets;

@:include("wx/timer.h")
@:unreflective
@:native("cpp::Reference<wxTimer>")
extern class Timer extends TimerImpl {
    @:native("new wxTimer")    public static function createInstance(owner:Window, id:Int = -1):Timer;
}

@:include("wx/timer.h")
@:unreflective
@:native("wxTimer")
extern class TimerImpl {
    @:native("Start")           public function start(milliseconds:Int, oneShot:Bool = false):Bool;
    @:native("Stop")            public function stop():Void;
}
