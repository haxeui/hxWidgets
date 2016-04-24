package hx.widgets;

import wx.widgets.MouseEvent in WxMouseEvent;
import wx.widgets.Event in WxEvent;

class MouseEvent extends Event {
    public function new() {
        super();
    }

    public var x(get, null):Int;
    public function get_x():Int {
        return mouseEventRef.getX();
    }

    public var y(get, null):Int;
    public function get_y():Int {
        return mouseEventRef.getY();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var mouseEventRef(get, null):WxMouseEvent;
    private function get_mouseEventRef():WxMouseEvent {
        return cast _ref;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
	public static override function fromRef(ref:WxEvent):Event {
		var event:MouseEvent = new MouseEvent();
		event._ref = ref;
		return event;
	}
}