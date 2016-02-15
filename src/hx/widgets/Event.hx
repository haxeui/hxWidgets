package hx.widgets;

import wx.widgets.Event in WxEvent;

class Event {
	private var _ref:WxEvent;
	
	public function new() {
		
	}
	
	public function getEventType():Int {
		return _ref.getEventType();
	}
	
	public function getId():Int {
		return _ref.getId();
	}
	
	public static function fromRef(ref:WxEvent):Event {
		var event:Event = new Event();
		event._ref = ref;
		return event;
	}
}
