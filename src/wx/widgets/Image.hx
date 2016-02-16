package wx.widgets;

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
