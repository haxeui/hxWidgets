package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

class Panel extends Window {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var panelRef:WxPanelRef = WxPanelRef.createInstance();
        panelRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
        untyped __cpp__("_ref = *panelRef");
    }
}

@:include("wx/panel.h")
@:native("cpp.Reference<wxPanel>")
extern class WxPanelRef extends WxPanel {
    @:native("new wxPanel")     public static function createInstance():WxPanelRef;
}

@:include("wx/panel.h")
@:native("wxPanel")
extern class WxPanel extends WxWindow {
    @:native("Create")          public function create(parent:WxWindowRef, id:Int, point:WxPointRef, size:WxSizeRef, style:Int):Bool;
}
