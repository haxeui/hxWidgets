package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/imaglist.h")
@:unreflective
@:native("wxImageList")
extern class ImageList {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxImageList")         private static function _new():RawPointer<ImageList>;
                                        public static inline function createInstance():Pointer<ImageList> return Pointer.fromRaw(_new());

    @:native("Create")                  public function create(width:Int, height:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Add")                     public function add(bitmap:Bitmap):Int;
}

/*
@:include("wx/imaglist.h")
@:unreflective
@:native("cpp::Reference<wxImageList>")
extern class ImageList extends ImageListImpl {
    @:native("new wxImageList")     public static function createInstance():ImageList;
}

@:include("wx/imaglist.h")
@:unreflective
@:native("wxImageList")
extern class ImageListImpl {
    @:native("Create")              public function create(width:Int, height:Int):Bool;
    @:native("Add")                 public function add(bitmap:Bitmap):Int;
}

*/