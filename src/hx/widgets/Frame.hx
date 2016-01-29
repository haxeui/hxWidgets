package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

class Frame extends Window {
    private var _hasStatusBar:Bool;
    
    public function new(parent:Window, title:String, id:Int = -1) {
        super(parent, id);
        
        var frameRef:WxFrameRef = WxFrameRef.createInstance();
        frameRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title);
        untyped __cpp__("_ref = *frameRef");
    }
    
    public function createStatusBar() {
        frameRef.createStatusBar();
        _hasStatusBar = true;
    }
    
    public function setStatusText(text:String) {
        if (_hasStatusBar == false) {
            createStatusBar();
        }
        frameRef.setStatusText(text);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var frameRef(get, null):WxFrameRef;
    private function get_frameRef():WxFrameRef {
        return cast _ref;
    }
}

@:include("wx/frame.h")
@:unreflective
@:native("wxFrame*")
extern class WxFrameRef extends WxFrame {
    @:native("new wxFrame")         public static function createInstance():WxFrameRef;
}

@:include("wx/frame.h")
@:unreflective
@:native("wxFrame")
extern class WxFrame extends WxWindow {
    @:native("Create")              public function create(parent:WxWindowRef, id:Int, title:ConstCharStar):Bool;
    @:native("CreateStatusBar")     public function createStatusBar():Void;
    @:native("SetStatusText")       public function setStatusText(text:ConstCharStar):Void;
}
