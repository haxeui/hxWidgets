package hx.widgets;

import wx.widgets.ThreadEvent in WxThreadEvent;

class ThreadEvent extends Event {
    public function new(eventType:Int = -1, id:Int = 0) {
        super();
        if (eventType == -1) {
            eventType = EventType.THREAD;
        }
        _ref = WxThreadEvent.createInstance(eventType, id).reinterpret();
    }
}