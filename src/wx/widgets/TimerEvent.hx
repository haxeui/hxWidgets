package wx.widgets;

import cpp.RawPointer;
import cpp.Reference;

@:include("wx/timer.h")
@:unreflective
@:native("wxTimerEvent")
@:structAccess
extern class TimerEvent extends Event {
    @:native("GetTimer")         public function getTimer():Reference<Timer>;
}