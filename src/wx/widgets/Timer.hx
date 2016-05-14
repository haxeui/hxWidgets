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
                                public static inline function createInstance(owner:RawPointer<Window>, id:Int = -1):Pointer<Timer> {
                                    return Pointer.fromRaw(_new(owner, id));
                                }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Start")           public function start(milliseconds:Int, oneShot:Bool = false):Bool;
    @:native("Stop")            public function stop():Void;

}
