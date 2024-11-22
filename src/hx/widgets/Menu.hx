package hx.widgets;

import cpp.Pointer;
import wx.widgets.Menu in WxMenu;
import wx.widgets.MenuItem in WxMenuItem;
import wx.widgets.WxString;

class Menu extends EvtHandler {

    public function new(text:String = null, style:Int = 0) {
        if (_ref == null) {
            var str = WxString.fromUTF8(text);
            _ref = WxMenu.createInstance(str, style).reinterpret();
        }

        super();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:access(hx.widgets.MenuItem)
    public function appendItem(menuItem:MenuItem):MenuItem {
        var menuItemRef:Pointer<WxMenuItem> = Pointer.fromRaw(menuRef.ptr.append(menuItem.menuitemRef.get_raw()));
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef.reinterpret();
        return menuItem;
    }

    public function append(id:Int, text:String = null):MenuItem {
        return appendItem(new MenuItem(this, text, null, id));
    }

    @:access(hx.widgets.MenuItem)
    public function appendCheckItem(id:Int, text:String):MenuItem {
        var str = WxString.fromUTF8(text);
        var menuItemRef:Pointer<WxMenuItem> = Pointer.fromRaw(menuRef.ptr.appendCheckItem(id, str));
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef.reinterpret();
        return menuItem;
    }

    @:access(hx.widgets.MenuItem)
    public function appendRadioItem(id:Int, text:String):MenuItem {
        var str = WxString.fromUTF8(text);
        var menuItemRef:Pointer<WxMenuItem> = Pointer.fromRaw(menuRef.ptr.appendRadioItem(id, str));
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef.reinterpret();
        return menuItem;
    }

    @:access(hx.widgets.MenuItem)
    public function appendSeparator():MenuItem {
        var menuItemRef:Pointer<WxMenuItem> = Pointer.fromRaw(menuRef.ptr.appendSeparator());
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef.reinterpret();
        return menuItem;
    }

    @:access(hx.widgets.MenuItem)
    public function appendSubMenu(menu:Menu, text:String):MenuItem {
        var str = WxString.fromUTF8(text);
        var menuItemRef:Pointer<WxMenuItem> = Pointer.fromRaw(menuRef.ptr.appendSubMenu(menu.menuRef.get_raw(), str));
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef.reinterpret();
        return menuItem;
    }

    public function destroyItem(menuItem: MenuItem): Bool {
        var menuItemPtr: Pointer<WxMenuItem> = menuItem._ref.reinterpret();
        return menuRef.ptr.destroy(menuItemPtr.get_raw());
    }

    public function insertSubMenu(position:Int, id:Int, menu:Menu, text:String):MenuItem {
        var str = WxString.fromUTF8(text);
        var menuItemRef:Pointer<WxMenuItem> = Pointer.fromRaw(menuRef.ptr.insert(position, id, str, menu.menuRef.get_raw()));
        var menuItem:MenuItem = new MenuItem();
        menuItem._ref = menuItemRef.reinterpret();
        return menuItem;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuRef(get, null):Pointer<WxMenu>;
    private function get_menuRef():Pointer<WxMenu> {
        return _ref.reinterpret();
    }

}
