package hx.widgets;

import wx.widgets.MenuItem in WxMenuItem;

class MenuItem {
    private var _ref:WxMenuItem;
    
    @:access(hx.widgets.Menu)
    public function new(parent:Menu = null, text:String = null, kind:Int = -1, id:Int = -1) {
        if (parent != null) {
            if (kind == -1) {
                kind = ItemKind.ITEM_NORMAL;
            }
            _ref = WxMenuItem.createInstance(parent.menuRef, id, text, "", kind);
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
