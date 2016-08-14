package hx.widgets;

import cpp.Pointer;
import haxe.io.Bytes;
import wx.widgets.Image in WxImage;

class Image extends Object {

    @:access(hx.widgets.MemoryInputStream)
    public function new(bytes:Bytes) {
        var stream = new MemoryInputStream(bytes);
        _ref = WxImage.createInstance(stream.memoryinputstreamRef.ref).reinterpret();
        stream.destroy();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var width(get, null):Int;
    private function get_width():Int {
        return imageRef.ptr.getWidth();
    }

    public var height(get, null):Int;
    private function get_height():Int {
        return imageRef.ptr.getHeight();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var imageRef(get, null):Pointer<WxImage>;
    private function get_imageRef():Pointer<WxImage> {
        return _ref.reinterpret();
    }

}
