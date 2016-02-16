package hx.widgets;

import wx.widgets.MenuBar in WxMenuBar;

class MenuBar extends Window { 
    public function new(style:Int = 0, create:Bool = true) {
        super(null, -1);
        if (create == true) {
            var menuBarRef:WxMenuBar = WxMenuBar.createInstance(style);
            _ref = menuBarRef;
        }
    }
    
    @:access(hx.widgets.Menu)
    public function append(menu:Menu, title:String) {
        menuBarRef.append(menu.menuRef, title);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuBarRef(get, null):WxMenuBar;
    private inline function get_menuBarRef():WxMenuBar {
        return cast _ref;
    }
}
