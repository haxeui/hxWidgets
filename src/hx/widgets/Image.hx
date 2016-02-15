package hx.widgets;

import haxe.io.Bytes;
import wx.widgets.Image in WxImage;

class Image {
    private var _ref:WxImage;
    private var _stream:MemoryInputStream;

	@:access(hx.widgets.MemoryInputStream)
    public function new(bytes:Bytes) {
        _stream = new MemoryInputStream(bytes);
        _ref = WxImage.createInstance(_stream._ref);
    }
    
    public function getWidth():Int {
        return _ref.getWidth();
    }
    
    public function getHeight():Int {
        return _ref.getHeight();
    }
}
