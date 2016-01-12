package hx.widgets;

import hx.widgets.Bitmap.WxBitmapRef;
import hx.widgets.ImageList.WxImageListRef;

@:access(hx.widgets.Bitmap)
class ImageList {
    private var _ref:WxImageListRef;
    public function new(width:Int, height:Int) {
        _ref = WxImageListRef.createInstance();
        _ref.create(width, height);
    }
    
    public function add(bitmap:Bitmap):Int {
        return _ref.add(bitmap._ref);
    }
}

@:include("wx/imaglist.h")
@:native("cpp.Reference<wxImageList>")
extern class WxImageListRef extends WxImageList {
    @:native("new wxImageList")     public static function createInstance():WxImageListRef;
}

@:include("wx/imaglist.h")
@:native("wxImageList")
extern class WxImageList {
    @:native("Create")              public function create(width:Int, height:Int):Bool;
    @:native("Add")                 public function add(bitmap:WxBitmapRef):Int;
}
