package hx.widgets;

import cpp.Pointer;
import wx.widgets.IdleEvent in WxIdleEvent;

class IdleEvent extends Event {
    public function requestMore(needMore:Bool = true) {
        idleEventRef.ptr.requestMore(needMore);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var idleEventRef(get, null):Pointer<WxIdleEvent>;
    private function get_idleEventRef():Pointer<WxIdleEvent> {
        return _ref.reinterpret();
    }
}