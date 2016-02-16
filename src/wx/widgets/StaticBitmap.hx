package wx.widgets;

@:include("wx/statbmp.h")
@:unreflective
@:native("cpp::Reference<wxStaticBitmap>")
extern class StaticBitmap extends StaticBitmapImpl {
    @:native("new wxStaticBitmap")      public static function createInstance():StaticBitmap;
}

@:include("wx/statbmp.h")
@:unreflective
@:native("wxStaticBitmap")
extern class StaticBitmapImpl extends Window {
    @:native("Create")                  public function create(parent:Window, id:Int, bitmap:Bitmap):Bool;
}
