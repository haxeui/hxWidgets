package hx.widgets;

import cpp.Pointer;
import wx.widgets.MenuBar in WxMenuBar;

class MenuBar extends Window { 
    public function new(style:Int = 0, create:Bool = true) {
        super(null, -1);
        if (create == true) {
            var menuBarRef:Pointer<WxMenuBar> = WxMenuBar.createInstance(style);
            _ref = cast menuBarRef.raw;
        }
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:access(hx.widgets.Menu)
    public function append(menu:Menu, title:String) {
        menuBarRef.ptr.append(menu.menuRef, title);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuBarRef(get, null):Pointer<WxMenuBar>;
    private inline function get_menuBarRef():Pointer<WxMenuBar> {
        return cast _ref.raw;
    }
}

/*
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
*/