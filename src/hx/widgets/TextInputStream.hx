package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.TextInputStream in WxTextInputStream;
import wx.widgets.InputStream in WxInputStream;

class TextInputStream {
    private var _ref:Pointer<WxTextInputStream> = null;
    
    private var _stream:InputStream = null;
    
    @:access(hx.widgets.InputStream)
    public function new(stream:InputStream) {
        _stream = stream;
        var wxStream = stream.inputStreamRef.ref;
        _ref = WxTextInputStream.createInstance(wxStream);
    }
    
    public function readLine():String {
        var s = _ref.ptr.readLine();
        return new String(s.toUTF8().data());
    }
    
    // util functions
    public var canRead(get, null):Bool;
    private function get_canRead():Bool {
        return _stream.canRead;
    }
    
    public var eof(get, null):Bool;
    private function get_eof():Bool {
        return _stream.eof;
    }
}