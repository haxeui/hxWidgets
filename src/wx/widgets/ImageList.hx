package wx.widgets;

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
