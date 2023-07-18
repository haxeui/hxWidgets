package hx.widgets;

import cpp.Pointer;
import wx.widgets.AnyButton in WxAnyButton;
import wx.widgets.Bitmap in WxBitmap;

class AnyButton extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var _hasBitmap:Bool; // we'll use this var to store if a bitmap has been set, this way we can set the position in any order

    public var bitmap(get, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function get_bitmap():Bitmap {
        var b = anyButtonRef.ptr.getBitmap();
        var bmp:Bitmap = new Bitmap();
        bmp._ref = WxBitmap.createInstanceFromBitmap(b).reinterpret();
        return bmp;
    }
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        anyButtonRef.ptr.setBitmap(value.bitmapRef.ref);
        if (!_hasBitmap) {
            _hasBitmap = true;
            set_bitmapPosition(bitmapPosition);
        }
        return value;
    }

    public var bitmapPosition(default, set):Direction;
    public function set_bitmapPosition(value:Direction):Direction {
        bitmapPosition = value;
        if (!_hasBitmap) {
            return value;
        }

        anyButtonRef.ptr.setBitmapPosition(value);
        return value;
    }
    

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var anyButtonRef(get, null):Pointer<WxAnyButton>;
    private function get_anyButtonRef():Pointer<WxAnyButton> {
       return _ref.reinterpret();
    }
}
