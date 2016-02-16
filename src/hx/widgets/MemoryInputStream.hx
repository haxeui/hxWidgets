package hx.widgets;

import haxe.io.Bytes;
import wx.widgets.MemoryInputStream in WxMemoryInputStream;

class MemoryInputStream {
    private var _bytes:Bytes;
    private var _ref:WxMemoryInputStream;

    public function new(bytes:Bytes) {
        _bytes = bytes;
        _ref = WxMemoryInputStream.createInstance(_bytes.getData().toString(), _bytes.length);
    }
}
