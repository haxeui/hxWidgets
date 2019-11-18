package hx.widgets;

import cpp.NativeArray;
import cpp.Pointer;
import haxe.io.Bytes;
import wx.widgets.MemoryInputStream in WxMemoryInputStream;

class MemoryInputStream extends InputStream {

    private var _bytes:Bytes;

    public function new(bytes:Bytes) {
        _bytes = bytes;
        var p = NativeArray.address(_bytes.getData(), 0);
        _ref = WxMemoryInputStream.createInstance(p, _bytes.length).reinterpret();
        super();
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
