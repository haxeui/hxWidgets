package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("cpp::Reference<wxEvent>")
extern class Event extends EventImpl {
}

@:include("wx/event.h")
@:unreflective
@:native("wxEvent")
extern class EventImpl {
	@:native("GetEventType")        public function getEventType():Int;
	@:native("GetId")               public function getId():Int;
}
