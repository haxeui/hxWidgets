package hx.widgets;

import cpp.Pointer;
import wx.widgets.Menu in WxMenu;
import wx.widgets.MenuItem in WxMenuItem;

class Menu extends Window {
    public function new(text:String = null, style:Int = 0) {
        if (_ref == null) {
            var menuRef:Pointer<WxMenu> = WxMenu.createInstance(text, style);
            _ref = cast menuRef.raw;
        }
        
        super(null, -1);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:access(hx.widgets.MenuItem)
    public function appendItem(menuItem:MenuItem):MenuItem {
        var menuItemRef:Pointer<WxMenuItem> = menuRef.ptr.append(menuItem._ref);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    public function append(id:Int, text:String = null):MenuItem {
        return appendItem(new MenuItem(this, text, null, id));
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendCheckItem(id:Int, text:String):MenuItem {
        var menuItemRef:Pointer<WxMenuItem> = menuRef.ptr.appendCheckItem(id, text);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendRadioItem(id:Int, text:String):MenuItem {
        var menuItemRef:Pointer<WxMenuItem> = menuRef.ptr.appendRadioItem(id, text);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendSeparator():MenuItem {
        var menuItemRef:Pointer<WxMenuItem> = menuRef.ptr.appendSeparator();
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendSubMenu(menu:Menu, text:String):MenuItem {
        var menuItemRef:Pointer<WxMenuItem> = menuRef.ptr.appendSubMenu(menu.menuRef, text);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuRef(get, null):Pointer<WxMenu>;
    private inline function get_menuRef():Pointer<WxMenu> {
        return cast _ref.raw;
    }
}

/*
import haxe.ds.Either;
import wx.widgets.Menu in WxMenu;
import wx.widgets.MenuItem in WxMenuItem;

class Menu extends Window {
    public function new(text:String = null, style:Int = 0) {
        if (_ref == null) {
            var menuRef:WxMenu = WxMenu.createInstance(text, style);
            _ref = menuRef;
        }
        
        super(null, -1);
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendItem(menuItem:MenuItem):MenuItem {
        var menuItemRef:WxMenuItem = menuRef.append(menuItem._ref);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    public function append(id:Int, text:String = null):MenuItem {
        return appendItem(new MenuItem(this, text, null, id));
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendCheckItem(id:Int, text:String):MenuItem {
        var menuItemRef:WxMenuItem = menuRef.appendCheckItem(id, text);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendRadioItem(id:Int, text:String):MenuItem {
        var menuItemRef:WxMenuItem = menuRef.appendRadioItem(id, text);
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendSeparator():MenuItem {
        var menuItemRef:WxMenuItem = menuRef.appendSeparator();
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef;
        return menuItem;
    }
    
    @:access(hx.widgets.MenuItem)
    public function appendSubMenu(menu:Menu, text:String):MenuItem {
        var menuItemRef:WxMenuItem = menuRef.appendSubMenu(menu.menuRef, text);
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
*/