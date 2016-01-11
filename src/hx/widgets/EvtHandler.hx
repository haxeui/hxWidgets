package hx.widgets;

import hx.widgets.Event.WxEventRef;
import hx.widgets.Window.WxWindowRef;

@:headerClassCode("
void onEvent(wxEvent& e) {
	this->handleEvent(e);
}
")
class EvtHandler {
	private var _ref:WxWindowRef;
	
	private var _eventMap:Map<Int, Map<Int, Array<Event->Void>>>;
	
	public function new() {
		_eventMap = new Map<Int, Map<Int, Array<Event->Void>>>();
	}
	
	public function bind(event:Int, fn:Event->Void, id:Int = -1) {
		var mapForId:Map<Int, Array<Event->Void>> = _eventMap.get(id);
		if (mapForId == null) {
			mapForId = new Map<Int, Array<Event->Void>>();
			_eventMap.set(id, mapForId);
		}
		
		var eventList:Array<Event->Void> = mapForId.get(event);
		if (eventList == null) {
			eventList = new Array<Event->Void>();
			mapForId.set(event, eventList);
		}
		
		eventList.push(fn);
		
		untyped __cpp__('_ref->Bind(event, &hx::widgets::EvtHandler_obj::onEvent, this, id)');
	}
	
	private function handleEvent(e:WxEventRef):Void {
		executeHandlers(e, e.getId());
		executeHandlers(e); // call any that were not added using control ids
	}
	
	private function executeHandlers(e:WxEventRef, id:Int = -1):Void {
		var mapForId:Map<Int, Array<Event->Void>> = _eventMap.get(id);
		if (mapForId == null) {
			return;
		}
		
		var eventList:Array<Event->Void> = mapForId.get(e.getEventType());
		if (eventList == null) {
			return;
		}
		
		for (fn in eventList) {
			fn(Event.fromRef(e));
		}
	}
}

@:include("wx/event.h")
@:native("cpp.Reference<wxEvtHandler>")
extern class WxEvtHandlerRef extends WxEvtHandler {
	@:native("new wxEvtHandler") public static function createInstance():WxEvtHandlerRef;
}

@:include("wx/event.h")
@:native("wxEvtHandler")
extern class WxEvtHandler {
}