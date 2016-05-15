package hx.widgets;

import cpp.Pointer;
import haxe.io.Bytes;
import wx.widgets.Image in WxImage;

class Image {

    private var _ref:Pointer<WxImage>;

	@:access(hx.widgets.MemoryInputStream)
    public function new(bytes:Bytes) {
        var stream = new MemoryInputStream(bytes);
        _ref = WxImage.createInstance(stream._ref.ref);
        stream.destroy();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var width(get, null):Int;
    private function get_width():Int {
        return _ref.ptr.getWidth();
    }

    public var height(get, null):Int;
    private function get_height():Int {
        return _ref.ptr.getHeight();
    }

}
