package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Bitmap.WxBitmapRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:access(hx.widgets.Bitmap)
class Button extends Window {
    public function new(parent:Window, label:String, id:Int = -1) {
        super(parent, id);
        
        var buttonRef:WxButtonRef = WxButtonRef.createInstance();
        buttonRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label);
        untyped __cpp__("_ref = *buttonRef");
    }
    
    public function setBitmap(bitmap:Bitmap) {
        buttonRef.setBitmap(bitmap._ref);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var buttonRef(get, null):WxButtonRef;
    private function get_buttonRef():WxButtonRef {
        return cast _ref;
    }
}

@:include("wx/button.h")
@:unreflective
@:native("wxButton*")
extern class WxButtonRef extends WxButton {
    @:native("new wxButton")    public static function createInstance():WxButtonRef;
}

@:include("wx/button.h")
@:unreflective
@:native("wxButton")
extern class WxButton extends WxWindow {
    @:native("Create")          public function create(parent:WxWindowRef, id:Int, title:ConstCharStar):Bool;
    @:native("SetBitmap")       public function setBitmap(bitmap:WxBitmapRef):Void;
}
