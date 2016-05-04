package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.MenuItem in WxMenuItem;

class MenuItem {
    private var _ref:Pointer<WxMenuItem>;
    
    @:access(hx.widgets.Menu)
    public function new(parent:Menu = null, text:String = null, kind:ItemKind = null, id:Int = -1) {
        if (parent != null) {
            if (kind == null) {
                kind = ItemKind.ITEM_NORMAL;
            }
            _ref = WxMenuItem.createInstance(parent.menuRef.get_raw(), id, text, "");
        }
    }
    
    public var bitmap(null, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        _ref.ptr.setBitmap(value._ref.ref);
        return value;
    }
}
