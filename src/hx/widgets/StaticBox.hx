package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

class StaticBox extends Window {
    public function new(parent:Window, title:String = null, id:Int = -1) {
        super(parent, id);
        
        var boxRef:WxStaticBoxRef = WxStaticBoxRef.createInstance();
        boxRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title);
        untyped __cpp__("_ref = *boxRef");
    }
}

@:include("wx/statbox.h")
@:native("cpp.Reference<wxStaticBox>")
extern class WxStaticBoxRef extends WxStaticBox {
    @:native("new wxStaticBox")     public static function createInstance():WxStaticBoxRef;
}

@:include("wx/statbox.h")
@:native("wxStaticBox")
extern class WxStaticBox extends WxWindow {
    @:native("Create")              public function create(parent:WxWindowRef, id:Int, title:ConstCharStar):Bool;
}
