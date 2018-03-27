package hx.widgets;

import cpp.Pointer;
import wx.widgets.CloseEvent in WxCloseEvent;

class CloseEvent extends Event {

    public var canVeto(get, null):Bool;
    private function get_canVeto():Bool {
        return closeEventRef.ptr.canVeto();
    }
    
    public function veto(veto:Bool = true) {
        closeEventRef.ptr.veto(veto);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var closeEventRef(get, null):Pointer<WxCloseEvent>;
    private function get_closeEventRef():Pointer<WxCloseEvent> {
        return _ref.reinterpret();
    }
}