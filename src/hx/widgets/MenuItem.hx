package hx.widgets;

import cpp.Pointer;
import wx.widgets.MenuItem in WxMenuItem;
import wx.widgets.WxString;

class MenuItem {

    private var _ref:Pointer<WxMenuItem>;

    @:access(hx.widgets.Menu)
    public function new(parent:Menu = null, text:String = null, kind:ItemKind = null, id:Int = -1) {
        if (parent != null) {
            if (kind == null) {
                kind = ItemKind.ITEM_NORMAL;
            }

            var str = WxString.createInstance(text);
            var str2 = WxString.createInstance("");
            _ref = WxMenuItem.createInstance(parent.menuRef.get_raw(), id, str.ref, str2.ref);
            str.destroy();
            str2.destroy();
        }
    }

    public var bitmap(null, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        _ref.ptr.setBitmap(value._ref.ref);
        return value;
    }

}
