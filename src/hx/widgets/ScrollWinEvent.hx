package hx.widgets;

import cpp.Pointer;
import wx.widgets.Event in WxEvent;
import wx.widgets.ScrollWinEvent in WxScrollWinEvent;

class ScrollWinEvent extends Event {
    public var orientation(get, set):Int;
    private function get_orientation():Int {
        return scrollWinEventRef.ptr.getOrientation();
    }
    private function set_orientation(value:Int):Int {
        scrollWinEventRef.ptr.setOrientation(value);
        return value;
    }

    public var position(get, set):Int;
    private function get_position():Int {
        return scrollWinEventRef.ptr.getPosition();
    }
    private function set_position(value:Int):Int {
        scrollWinEventRef.ptr.setPosition(value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrollWinEventRef(get, null):Pointer<WxScrollWinEvent>;
    private function get_scrollWinEventRef():Pointer<WxScrollWinEvent> {
        return _ref.reinterpret();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromPointer(ptr:Pointer<WxEvent>):Event {
        var event:ScrollWinEvent = new ScrollWinEvent();
        event._ref = ptr;
        return event;
    }
}
