package hx.widgets;

import cpp.Pointer;
import wx.widgets.NotifyEvent in WxNotifyEvent;

class NotifyEvent extends Event {

    public var isAllowed(get, null):Bool;
    private function get_isAllowed():Bool {
        return notifyEventRef.ptr.isAllowed();
    }
    
    public function veto() {
        notifyEventRef.ptr.veto();
    }
    
    public function allow() {
        notifyEventRef.ptr.allow();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var notifyEventRef(get, null):Pointer<WxNotifyEvent>;
    private function get_notifyEventRef():Pointer<WxNotifyEvent> {
        return _ref.reinterpret();
    }
}