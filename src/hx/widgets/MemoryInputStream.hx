package hx.widgets;

import cpp.Pointer;
import haxe.io.Bytes;
import wx.widgets.MemoryInputStream in WxMemoryInputStream;

class MemoryInputStream extends InputStream {

    private var _bytes:Bytes;

    public function new(bytes:Bytes) {
        _bytes = bytes;
        _ref = WxMemoryInputStream.createInstance(_bytes.toString(), _bytes.length).reinterpret();
    }

    public function destroy() {
        _ref.destroy();
        _ref = null;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var memoryinputstreamRef(get, null):Pointer<WxMemoryInputStream>;
    private function get_memoryinputstreamRef():Pointer<WxMemoryInputStream> {
        return _ref.reinterpret();
    }

}
