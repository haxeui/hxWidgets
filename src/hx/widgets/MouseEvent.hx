package hx.widgets;

import cpp.Pointer;
import wx.widgets.MouseEvent in WxMouseEvent;
import wx.widgets.Event in WxEvent;

class MouseEvent extends Event {
    public function new() {
        super();
    }

    public var x(get, null):Int;
    private function get_x():Int {
        return mouseEventRef.ptr.getX();
    }

    public var y(get, null):Int;
    private function get_y():Int {
        return mouseEventRef.ptr.getY();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var mouseEventRef(get, null):Pointer<WxMouseEvent>;
    private function get_mouseEventRef():Pointer<WxMouseEvent> {
        return Pointer.fromRaw(untyped __cpp__("(wxMouseEvent*)(_ref->get_raw())"));
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
	public static override function fromPointer(ptr:Pointer<WxEvent>):Event {
		var event:MouseEvent = new MouseEvent();
		event._ref = ptr;
		return event;
	}
}