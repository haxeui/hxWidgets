package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxCloseEvent")
@:structAccess
extern class CloseEvent extends Event {
    @:native("CanVeto")     public function canVeto():Bool;
    @:native("Veto")        public function veto(veto:Bool = true):Void;
}