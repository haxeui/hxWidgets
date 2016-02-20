package hx.widgets;

import wx.widgets.Menu in WxMenu;
import wx.widgets.MenuItem in WxMenuItem;

class Menu extends Window {
    public function new(title:String = null, style:Int = 0) {
        if (_ref == null) {
            var menuRef:WxMenu = WxMenu.createInstance(title, style);
            _ref = menuRef;
        }
        
        super(null, -1);
    }
    
    @:access(hx.widgets.MenuItem)
    public function append(menuItem:MenuItem):MenuItem {
        var menuItemRef:WxMenuItem = menuRef.append(menuItem._ref);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuRef(get, null):WxMenu;
    private inline function get_menuRef():WxMenu {
        return cast _ref;
    }
}
