package wx.widgets;

@:include("wx/bitmap.h")
@:unreflective
@:native("cpp::Reference<wxBitmap>")
extern class Bitmap extends BitmapImpl {
    @:native("new wxBitmap")    public static function createInstance(stream:Image):Bitmap;
}

@:include("wx/bitmap.h")
@:unreflective
@:native("wxBitmap")
extern class BitmapImpl {
    @:native("GetWidth")        public function getWidth():Int;
    @:native("GetHeight")       public function getHeight():Int;
}
