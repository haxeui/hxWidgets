package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxScrollWinEvent")
@:structAccess
extern class ScrollWinEvent extends Event {
    @:native("GetOrientation")      public function getOrientation():Int;
    @:native("GetPosition")         public function getPosition():Int;
    @:native("SetOrientation")      public function setOrientation(orientation:Int):Void;
    @:native("SetPosition")         public function setPosition(position:Int):Void;
}
