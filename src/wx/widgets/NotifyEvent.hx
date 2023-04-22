package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxNotifyEvent")
@:structAccess
extern class NotifyEvent extends Event {
    @:native("IsAllowed")   public function isAllowed():Bool;
    @:native("Veto")        public function veto():Void;
    @:native("Allow")       public function allow():Void;
}