package hx.widgets;

class Event {
	private var _ref:WxEventRef;
	
	public function new() {
		
	}
	
	public function getEventType():Int {
		return _ref.getEventType();
	}
	
	public function getId():Int {
		return _ref.getId();
	}
	
	public static function fromRef(ref:WxEventRef):Event {
		var event:Event = new Event();
		event._ref = ref;
		return event;
	}
}

@:include("wx/event.h")
@:native("cpp.Reference<wxEvent>")
extern class WxEventRef extends WxEvent {
}

@:include("wx/event.h")
@:native("wxEvent")
extern class WxEvent {
	@:native("GetEventType")        public function getEventType():Int;
	@:native("GetId")               public function getId():Int;
}
