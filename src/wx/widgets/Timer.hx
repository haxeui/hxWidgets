package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/timer.h")
@:unreflective
@:native("wxTimer")
extern class Timer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTimer")     private static function _new(owner:RawPointer<Window>, id:Int = -1):RawPointer<Timer>;
                                public static inline function createInstance(owner:RawPointer<Window>, id:Int = -1):Pointer<Timer> return Pointer.fromRaw(_new(owner, id));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Start")           public function start(milliseconds:Int, oneShot:Bool = false):Bool;
    @:native("Stop")            public function stop():Void;
}

/*
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
*/