package hx.widgets;

import cpp.Pointer;
import wx.widgets.MenuItem in WxMenuItem;
import wx.widgets.WxString;

class MenuItem extends Object {

    @:access(hx.widgets.Menu)
    public function new(parent:Menu = null, text:String = null, kind:ItemKind = null, id:Int = -1) {
        if (parent != null) {
            if (kind == null) {
                kind = ItemKind.ITEM_NORMAL;
            }

            var str = WxString.fromUTF8(text);
            var str2 = WxString.fromUTF8("");
            _ref = WxMenuItem.createInstance(parent.menuRef.get_raw(), id, str, str2).reinterpret();
        }
    }

    public var bitmap(null, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        menuitemRef.ptr.setBitmap(value.bitmapRef.ref);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var menuitemRef(get, null):Pointer<WxMenuItem>;
    private function get_menuitemRef():Pointer<WxMenuItem> {
        return _ref.reinterpret();
    }

}
