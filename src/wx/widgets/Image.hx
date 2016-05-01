package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/image.h")
@:unreflective
@:native("wxImage")
extern class Image {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxImage")             private static function _new(stream:MemoryInputStream):RawPointer<Image>;
                                        public static inline function createInstance(stream:MemoryInputStream):Pointer<Image> return Pointer.fromRaw(_new(stream));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetWidth")                public function getWidth():Int;
    @:native("GetHeight")               public function getHeight():Int;
}

/*
@:include("wx/image.h")
@:unreflective
@:native("cpp::Reference<wxImage>")
extern class Image extends ImageImpl {
    @:native("new wxImage")     public static function createInstance(stream:MemoryInputStream):Image;
}

@:include("wx/image.h")
@:unreflective
@:native("wxImage")
extern class ImageImpl {
    @:native("GetWidth")        public function getWidth():Int;
    @:native("GetHeight")       public function getHeight():Int;
}
*/