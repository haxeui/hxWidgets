package hx.widgets;

import cpp.Pointer;
import wx.widgets.StaticBitmap in WxStaticBitmap;
import wx.widgets.Bitmap in WxBitmap;

class StaticBitmap extends Control {

	@:access(hx.widgets.Bitmap)
    public function new(parent:Window, bitmap:Bitmap, id:Int = -1) {
        if (_ref == null) {
            _ref = WxStaticBitmap.createInstance().reinterpret();
            bitmapRef.ptr.create(Window.toRaw(parent), id, bitmap._ref.ref);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var bitmap(get, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function get_bitmap():Bitmap {
        var b = bitmapRef.ptr.getBitmap();
        var bmp:Bitmap = new Bitmap();
        bmp._ref = WxBitmap.createInstanceFromBitmap(b);
        return bmp;
    }
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        bitmapRef.ptr.setBitmap(value._ref.ref);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var bitmapRef(get, null):Pointer<WxStaticBitmap>;
    private function get_bitmapRef():Pointer<WxStaticBitmap> {
       return _ref.reinterpret();
    }

}
