package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Bitmap.WxBitmapRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:access(hx.widgets.Bitmap)
class StaticBitmap extends Window {
    public function new(parent:Window, bitmap:Bitmap, id:Int = -1) {
        super(parent, id);
        
        var bitmapRef:WxStaticBitmapRef = WxStaticBitmapRef.createInstance();
        bitmapRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, bitmap._ref);
        untyped __cpp__("_ref = *bitmapRef");
    }
}

@:include("wx/statbmp.h")
@:unreflective
@:native("wxStaticBitmap*")
extern class WxStaticBitmapRef extends WxStaticBitmap {
    @:native("new wxStaticBitmap")      public static function createInstance():WxStaticBitmapRef;
}

@:include("wx/statbmp.h")
@:unreflective
@:native("wxStaticBitmap")
extern class WxStaticBitmap extends WxWindow {
    @:native("Create")                  public function create(parent:WxWindowRef, id:Int, bitmap:WxBitmapRef):Bool;
}
