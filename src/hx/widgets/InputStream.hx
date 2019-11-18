package hx.widgets;

import cpp.Pointer;
import wx.widgets.InputStream in WxInputStream;

class InputStream extends StreamBase {
    public function new() {
        super();
    }
    
    public var canRead(get, null):Bool;
    private function get_canRead():Bool {
        return inputStreamRef.ptr.canRead();
    }
    
    public var eof(get, null):Bool;
    private function get_eof():Bool {
        return inputStreamRef.ptr.eof();
    }
    
    public function getC():Int {
        return inputStreamRef.ptr.getC();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var inputStreamRef(get, null):Pointer<WxInputStream>;
    private function get_inputStreamRef():Pointer<WxInputStream> {
        return _ref.reinterpret();
    }
}
