package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:headerCode("#include <wx/hyperlink.h>")
class HyperlinkCtrlStyle {
    public static var ALIGN_LEFT:Int            = untyped __cpp__("wxHL_ALIGN_LEFT");
    public static var ALIGN_RIGHT:Int           = untyped __cpp__("wxHL_ALIGN_RIGHT");
    public static var ALIGN_CENTRE:Int          = untyped __cpp__("wxHL_ALIGN_CENTRE");
    public static var CONTEXTMENU:Int           = untyped __cpp__("wxHL_CONTEXTMENU");
    public static var DEFAULT_STYLE:Int         = untyped __cpp__("wxHL_DEFAULT_STYLE");
}

class HyperlinkCtrl extends Window {
    public function new(parent:Window, text:String = null, url:String = null, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var linkRef:WxHyperlinkCtrlRef = WxHyperlinkCtrlRef.createInstance();
        linkRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, url, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = cast linkRef;
    }
}

@:include("wx/hyperlink.h")
@:unreflective
@:native("wxHyperlinkCtrl*")
extern class WxHyperlinkCtrlRef extends WxHyperlinkCtrl {
    @:native("new wxHyperlinkCtrl")    public static function createInstance():WxHyperlinkCtrlRef;
}

@:include("wx/hyperlink.h")
@:unreflective
@:native("wxHyperlinkCtrl")
extern class WxHyperlinkCtrl extends WxWindow {
    @:native("Create")                  public function create(parent:WxWindowRef, id:Int, text:ConstCharStar, url:ConstCharStar, point:WxPointRef, size:WxSizeRef, style:Int):Bool;
}
