package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxIdleEvent")
@:structAccess
extern class IdleEvent extends Event {
    @:native("RequestMore") public function requestMore(needMore:Bool = true):Void;
}