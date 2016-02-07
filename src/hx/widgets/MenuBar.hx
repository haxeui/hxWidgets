package hx.widgets;

import cpp.ConstCharStar;
import cpp.Void;
import hx.widgets.Menu.WxMenuRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:access(hx.widgets.Menu)
class MenuBar extends Window { 
    public function new(style:Int = 0, create:Bool = true) {
        super(null, -1);
        if (create == true) {
            var menuBarRef:WxMenuBarRef = WxMenuBarRef.createInstance(style);
            _ref = cast menuBarRef;
        }
    }
    
    public function append(menu:Menu, title:String) {
        menuBarRef.append(menu.menuRef, title);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuBarRef(get, null):WxMenuBarRef;
    private function get_menuBarRef():WxMenuBarRef {
        return cast _ref;
    }
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuBar*")
extern class WxMenuBarRef extends WxMenuBar {
    @:native("new wxMenuBar")       public static function createInstance(style:Int = 0):WxMenuBarRef;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuBar")
extern class WxMenuBar extends WxWindow {
    @:native("Append")              public function append(menu:WxMenuRef, title:ConstCharStar):Void;
}
