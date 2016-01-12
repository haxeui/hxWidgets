package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:headerCode("#include <wx/stattext.h>")
class StaticTextStyle {
    public static var ALIGN_LEFT:Int                    = untyped __cpp__("wxALIGN_LEFT");
    public static var ALIGN_RIGHT:Int                   = untyped __cpp__("wxALIGN_RIGHT");
    public static var ALIGN_CENTRE_HORIZONTAL:Int       = untyped __cpp__("wxALIGN_CENTRE_HORIZONTAL");
    public static var NO_AUTORESIZE:Int                 = untyped __cpp__("wxST_NO_AUTORESIZE");
    public static var ELLIPSIZE_START:Int               = untyped __cpp__("wxST_ELLIPSIZE_START");
    public static var ELLIPSIZE_MIDDLE:Int              = untyped __cpp__("wxST_ELLIPSIZE_MIDDLE");
    public static var ELLIPSIZE_END:Int                 = untyped __cpp__("wxST_ELLIPSIZE_END");
}

class StaticText extends Window {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var textRef:WxStaticTextRef = WxStaticTextRef.createInstance();
        textRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = cast textRef;
    }
    
}

@:include("wx/stattext.h")
@:native("cpp.Reference<wxStaticText>")
extern class WxStaticTextRef extends WxStaticText {
    @:native("new wxStaticText")    public static function createInstance():WxStaticTextRef;
}

@:include("wx/stattext.h")
@:native("wxStaticText")
extern class WxStaticText extends WxWindow {
    @:native("Create")              public function create(parent:WxWindowRef, id:Int, value:ConstCharStar, point:WxPointRef, size:WxSizeRef, style:Int):Bool;
}
