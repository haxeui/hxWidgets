package hx.widgets;

import cpp.Pointer;
import haxe.io.Bytes;
import wx.widgets.MemoryInputStream in WxMemoryInputStream;

class MemoryInputStream extends InputStream {

    private var _bytes:Bytes;
    private var _ref:Pointer<WxMemoryInputStream>;

    public function new(bytes:Bytes) {
        _bytes = bytes;
        _ref = WxMemoryInputStream.createInstance(_bytes.toString(), _bytes.length);
    }

    public function destroy() {
        _ref.destroy();
        _ref = null;
    }

}
