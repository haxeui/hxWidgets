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
extern class StaticBitmapImpl extends Control {
    @:native("Create")                  @:overload(function(parent:Window, id:Int, bitmap:Bitmap):Bool {})
    @:native("Create")                  public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;

    @:native("SetBitmap")               public function setBitmap(bitmap:Bitmap):Void;
}
