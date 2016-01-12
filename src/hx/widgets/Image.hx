package hx.widgets;

import haxe.io.Bytes;
import hx.widgets.Image.WxImageRef;
import hx.widgets.MemoryInputStream.WxMemoryInputStreamRef;

@:access(hx.widgets.MemoryInputStream)
class Image {
    private var _ref:WxImageRef;
    private var _stream:MemoryInputStream;
    
    public function new(bytes:Bytes) {
        _stream = new MemoryInputStream(bytes);
        _ref = WxImageRef.createInstance(_stream._ref);
    }
    
    public function getWidth():Int {
        return _ref.getWidth();
    }
    
    public function getHeight():Int {
        return _ref.getHeight();
    }
}

@:include("wx/image.h")
@:native("cpp.Reference<wxImage>")
extern class WxImageRef extends WxImage {
    @:native("new wxImage")     public static function createInstance(stream:WxMemoryInputStreamRef):WxImageRef;
}

@:include("wx/image.h")
@:native("wxImage")
extern class WxImage {
    @:native("GetWidth")        public function getWidth():Int;
    @:native("GetHeight")       public function getHeight():Int;
}
