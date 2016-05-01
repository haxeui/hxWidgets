package hx.widgets;

import cpp.Pointer;
import wx.widgets.MenuItem in WxMenuItem;

class MenuItem {
    private var _ref:Pointer<WxMenuItem>;
    
    @:access(hx.widgets.Menu)
    public function new(parent:Menu = null, text:String = null, kind:ItemKind = null, id:Int = -1) {
        if (parent != null) {
            if (kind == null) {
                kind = ItemKind.ITEM_NORMAL;
            }
            _ref = WxMenuItem.createInstance(parent.menuRef, id, text, "");
        }
    }
    
    public var bitmap(null, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        _ref.ptr.setBitmap(value._ref.ref);
        return value;
    }
}
/*
class MenuItem {
    private var _ref:WxMenuItem;
    
    @:access(hx.widgets.Menu)
    public function new(parent:Menu = null, text:String = null, kind:ItemKind = null, id:Int = -1) {
        if (parent != null) {
            if (kind == null) {
                kind = ItemKind.ITEM_NORMAL;
            }
            trace(ItemKind.ITEM_CHECK);
            _ref = WxMenuItem.createInstance(parent.menuRef, id, text, "");
        }
    }
    
    public function check(check:Bool = true) {
        if (_ref != null) {
            _ref.check(check);
        }
    }
    
    @:access(hx.widgets.Bitmap)
    public function setBitmap(bitmap:Bitmap) {
        _ref.setBitmap(bitmap._ref);
    }
}
*/

/*
class AboutMenuItem extends MenuItem {
    public function new(parent:Menu = null, text:String = null) {
        super(parent, text, null, StandardIds.ABOUT);
    }
}

class PreferencesMenuItem extends MenuItem {
    public function new(parent:Menu = null, text:String = null) {
        super(parent, text, null, StandardIds.PREFERENCES);
    }
}

class ExitMenuItem extends MenuItem {
    public function new(parent:Menu = null, text:String = null) {
        super(parent, text, null, StandardIds.EXIT);
    }
}
*/