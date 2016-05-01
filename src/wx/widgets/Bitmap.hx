package wx.widgets;


import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/bitmap.h")
@:unreflective
@:native("wxBitmap")
extern class Bitmap {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBitmap")            private static function _new(image:Image):RawPointer<Bitmap>;
                                        public static inline function createInstance(image:Image):Pointer<Bitmap> return Pointer.fromRaw(_new(image));
    @:native("new wxBitmap")            private static function _newFromBitmap(bitmap:Bitmap):RawPointer<Bitmap>;
                                        public static inline function createInstanceFromBitmap(bitmap:Bitmap):Pointer<Bitmap> return Pointer.fromRaw(_newFromBitmap(bitmap));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetWidth")                public function getWidth():Int;
    @:native("GetHeight")               public function getHeight():Int;
    @:native("GetSubBitmap")            public function getSubBitmap(rect:Rect):Bitmap;
    @:native("IsOk")                    public function isOk():Bool;
}


/*
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

*/