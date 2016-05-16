package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxEvent")
extern class Event extends Object {

	@:native("GetEventType")        public function getEventType():Int;
	@:native("GetId")               public function getId():Int;
    @:native("Skip")                public function skip(skip:Bool = true):Void;

}
