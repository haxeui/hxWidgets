package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.MenuItem.WxMenuItemRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:access(hx.widgets.MenuItem)
class Menu extends Window {
    public function new(title:String = null, style:Int = 0) {
        super(null, -1);
        
        var menuRef:WxMenuRef = WxMenuRef.createInstance(title, style);
        _ref = cast menuRef;
    }
    
    public function append(menuItem:MenuItem):MenuItem {
        var menuItemRef:WxMenuItemRef = menuRef.append(menuItem._ref);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuRef(get, null):WxMenuRef;
    private function get_menuRef():WxMenuRef {
        return cast _ref;
    }
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenu*")
extern class WxMenuRef extends WxMenu {
    @:native("new wxMenu")    public static function createInstance(title:ConstCharStar, style:Int = 0):WxMenuRef;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenu")
extern class WxMenu extends WxWindow {
    @:native("Append")    public function append(menuItem:WxMenuItemRef):WxMenuItemRef;
}
