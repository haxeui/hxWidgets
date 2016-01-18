package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

class ScrolledWindow extends Window {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var scrolledWindowRef:WxScrolledWindowRef = WxScrolledWindowRef.createInstance();
        scrolledWindowRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = cast scrolledWindowRef;
    }
    
    public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int) {
        scrolledWindowRef.setScrollbars(pixelsPerUnitX, pixelsPerUnitY, noUnitsX, noUnitsY);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrolledWindowRef(get, null):WxScrolledWindowRef;
    private function get_scrolledWindowRef():WxScrolledWindowRef {
        return cast _ref;
    }
}

@:include("wx/scrolwin.h")
@:native("cpp.Reference<wxScrolledWindow>")
extern class WxScrolledWindowRef extends WxScrolledWindow {
    @:native("new wxScrolledWindow")    public static function createInstance():WxScrolledWindowRef;
}

@:include("wx/scrolwin.h")
@:native("wxScrolledWindow")
extern class WxScrolledWindow extends WxWindow {
    @:native("Create")                  public function create(parent:WxWindowRef, id:Int, point:WxPointRef, size:WxSizeRef, style:Int):Bool;
    @:native("SetScrollbars")           public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int):Void;
}
