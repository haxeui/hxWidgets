package hx.widgets;

import cpp.Pointer;
import haxe.io.Bytes;
import wx.widgets.Image in WxImage;

class Image extends Object {

    @:access(hx.widgets.MemoryInputStream)
    public function new(bytes:Bytes = null) {
        if (bytes != null) {
            var stream = new MemoryInputStream(bytes);
            _ref = WxImage.createInstance(stream.memoryinputstreamRef.ref).reinterpret();
            stream.destroy();
        }
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
    
    public function scale(width:Int, height:Int):Image {
        var r = imageRef.ptr.scale(width, height);
        var copy = WxImage.createInstanceFromSize(r.getWidth(), r.getHeight());
        copy.ptr.paste(r, 0, 0);
        var image = new Image();
        image._ref = copy.reinterpret();
        r.destroy();
        return image;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var imageRef(get, null):Pointer<WxImage>;
    private function get_imageRef():Pointer<WxImage> {
        return _ref.reinterpret();
    }
}
