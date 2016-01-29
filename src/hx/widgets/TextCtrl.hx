package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:headerCode("#include <wx/textctrl.h>")
class TextCtrlStyle {
    public static var PROCESS_ENTER:Int     = untyped __cpp__("wxTE_PROCESS_ENTER");
    public static var PROCESS_TAB:Int       = untyped __cpp__("wxTE_PROCESS_TAB");
    public static var MULTILINE:Int         = untyped __cpp__("wxTE_MULTILINE");
    public static var PASSWORD:Int          = untyped __cpp__("wxTE_PASSWORD");
    public static var READONLY:Int          = untyped __cpp__("wxTE_READONLY");
    public static var RICH:Int              = untyped __cpp__("wxTE_RICH");
    public static var RICH2:Int             = untyped __cpp__("wxTE_RICH2");
    public static var AUTO_URL:Int          = untyped __cpp__("wxTE_AUTO_URL");
    public static var NOHIDESEL:Int         = untyped __cpp__("wxTE_NOHIDESEL");
    public static var HSCROLL:Int           = untyped __cpp__("wxHSCROLL");
    public static var NO_VSCROLL:Int        = untyped __cpp__("wxTE_NO_VSCROLL");
    public static var LEFT:Int              = untyped __cpp__("wxTE_LEFT");
    public static var CENTRE:Int            = untyped __cpp__("wxTE_CENTRE");
    public static var RIGHT:Int             = untyped __cpp__("wxTE_RIGHT");
    public static var DONTWRAP:Int          = untyped __cpp__("wxTE_DONTWRAP");
    public static var CHARWRAP:Int          = untyped __cpp__("wxTE_CHARWRAP");
    public static var WORDWRAP:Int          = untyped __cpp__("wxTE_WORDWRAP");
    public static var BESTWRAP:Int          = untyped __cpp__("wxTE_BESTWRAP");
    public static var CAPITALIZE:Int        = untyped __cpp__("wxTE_CAPITALIZE");
}

class TextCtrl extends Window {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var textRef:WxTextCtrlRef = WxTextCtrlRef.createInstance();
        textRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, Point.defaultPositionRef, Size.defaultSizeRef, style);
        untyped __cpp__("_ref = *textRef");
    }
    
    public function appendText(value:String) {
        textRef.appendText(value);
    }
    
    public var insertionPoint(get, set):Int;
    private function get_insertionPoint():Int {
        return textRef.getInsertionPoint();
    }
    private function set_insertionPoint(value:Int):Int {
        textRef.setInsertionPoint(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textRef(get, null):WxTextCtrlRef;
    private function get_textRef():WxTextCtrlRef {
        return cast _ref;
    }
}

@:include("wx/textctrl.h")
@:unreflective
@:native("wxTextCtrl*")
extern class WxTextCtrlRef extends WxTextCtrl {
    @:native("new wxTextCtrl")      public static function createInstance():WxTextCtrlRef;
}

@:include("wx/textctrl.h")
@:unreflective
@:native("wxTextCtrl")
extern class WxTextCtrl extends WxWindow {
    @:native("Create")              public function create(parent:WxWindowRef, id:Int, value:ConstCharStar, point:WxPointRef, size:WxSizeRef, style:Int):Bool;
    @:native("AppendText")          public function appendText(value:ConstCharStar):Void;
    @:native("GetInsertionPoint")   public function getInsertionPoint():Int;
    @:native("SetInsertionPoint")   public function setInsertionPoint(value:Int):Void;
}
