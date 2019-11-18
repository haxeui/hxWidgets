package hx.widgets;

import cpp.Pointer;
import wx.widgets.StreamBase in WxStreamBase;

class StreamBase {
    private var _ref:Pointer<WxStreamBase>;
    
    public function new() {
    }
    
    public var isOk(get, null):Bool;
    private function get_isOk():Bool {
        return streamBaseRef.ptr.isOk();
    }
    
    public var size(get, null):Int;
    private function get_size():Int {
        return streamBaseRef.ptr.getSize();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var streamBaseRef(get, null):Pointer<WxStreamBase>;
    private function get_streamBaseRef():Pointer<WxStreamBase> {
        return _ref.reinterpret();
    }
}
