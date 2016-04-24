package wx.widgets;

@:include("wx/bitmap.h")
@:unreflective
@:native("cpp::Reference<wxBitmap>")
extern class Bitmap extends BitmapImpl {
    @:native("new wxBitmap")        public static function createInstance(img:Image):Bitmap;
    @:native("new wxBitmap")        public static function createInstanceFromBitmap(bitmap:BitmapImpl):Bitmap;
}

@:include("wx/bitmap.h")
@:unreflective
@:native("wxBitmap")
@:structAccess
extern class BitmapImpl {
    @:native("GetWidth")            public function getWidth():Int;
    @:native("GetHeight")           public function getHeight():Int;
    @:native("GetSubBitmap")        public function getSubBitmap(rect:Rect):BitmapImpl;
    @:native("IsOk")                public function isOk():Bool;
}
