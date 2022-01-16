package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import haxe.io.Bytes;
import wx.widgets.Image in WxImage;

class ImageData {
    private var _image:Image;
    private var _data:Pointer<cpp.UInt8>;
    private var _alpha:Pointer<cpp.UInt8>;
    
    private var _width:Int;
    private var _height:Int;
    
    public function new(image:Image, data:Pointer<cpp.UInt8>, alpha:Pointer<cpp.UInt8>) {
        _image = image;
        _data = data;
        _alpha = alpha;
        _width = image.width;
        _height = image.height;
    }
    
    public function setRGB(x:Int, y:Int, r:Int, g:Int, b:Int) {
        var offset = (x + _width * y) * 3;
        _data[offset + 0] = r;
        _data[offset + 1] = g;
        _data[offset + 2] = b;
    }
    
    public function setRGBA(x:Int, y:Int, r:Int, g:Int, b:Int, a:Int) {
        var offset = (x + _width * y) * 3;
        _data[offset + 0] = r;
        _data[offset + 1] = g;
        _data[offset + 2] = b;
        if (_alpha != null) {
            var alphaOffset = (x + _width * y);
            _alpha[alphaOffset] = a;
        }    
    }
    
    public function set(x:Int, y:Int, c:Int, useAlpha:Bool = false) {
        if (useAlpha == true) {
            var r = (c & 0xFF000000) >> 24;
            var g = (c & 0x00FF0000) >> 16;
            var b = (c & 0x0000FF00) >> 8;
            var a = (c & 0x000000FF) >> 0;
            setRGBA(x, y, r, g, b, a);
        } else {
            var r = (c & 0xFF0000) >> 16;
            var g = (c & 0x00FF00) >> 8;
            var b = (c & 0x0000FF) >> 0;
            setRGB(x, y, r, g, b);
        }
    }
    
    public function clear(c:Int, useAlpha:Bool = false) {
        for (y in 0..._height) {
            for (x in 0..._width) {
                set(x, y, c, useAlpha);
            }
        }
    }
}

class Image extends Object {

    @:access(hx.widgets.MemoryInputStream)
    public function new(bytes:Bytes = null, width:Null<Int> = null, height:Null<Int> = null) {
        if (bytes != null) {
            var stream = new MemoryInputStream(bytes);
            _ref = WxImage.createInstance(stream.memoryinputstreamRef.ref).reinterpret();
            stream.destroy();
        } else if (width != null && height != null) {
           _ref = WxImage.createInstanceFromSize(width, height).reinterpret();
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
    
    public var imageData(get, null):ImageData;
    private function get_imageData():ImageData {
        var rawPointerData = imageRef.ptr.getData();
        var data = Pointer.fromRaw(rawPointerData);
        var rawPointerAlpha = imageRef.ptr.getAlpha();
        var alpha = null;
        if (rawPointerAlpha != null) {
            alpha = Pointer.fromRaw(rawPointerAlpha);
        }
        var wrapper = new ImageData(this, data, alpha);
        return wrapper;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var imageRef(get, null):Pointer<WxImage>;
    private function get_imageRef():Pointer<WxImage> {
        return _ref.reinterpret();
    }
}
