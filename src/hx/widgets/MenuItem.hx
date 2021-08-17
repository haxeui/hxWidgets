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
            _ref = WxMenuItem.createInstance(parent.menuRef.get_raw(), id, str, str2, kind).reinterpret();
        }
    }

    public var bitmap(null, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        menuitemRef.ptr.setBitmap(value.bitmapRef.ref);
        return value;
    }

    public function check(checked:Bool = true) {
        menuitemRef.ptr.check(checked);
    }
    
    public var enable(get, set):Bool;
    private function get_enable():Bool {
        return menuitemRef.ptr.isEnabled();
    }
    private function set_enable(value:Bool):Bool {
        menuitemRef.ptr.enable(value);
        return value;
    }

    public var id(get, null):Int;
    private function get_id():Int {
        return menuitemRef.ptr.getId();
    }

    public var label(get, set):String;
    private function get_label():String {
        var r:WxString = menuitemRef.ptr.getItemLabel();
        return new String(r.toUTF8().data());
    }
    private function set_label(value:String):String {
        var s = WxString.createInstance(value);
        menuitemRef.ptr.setItemLabel(s.ref);
        s.destroy();
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
