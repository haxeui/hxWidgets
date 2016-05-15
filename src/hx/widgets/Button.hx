package hx.widgets;

import cpp.Pointer;
import wx.widgets.Button in WxButton;
import wx.widgets.Bitmap in WxBitmap;

class Button extends Control {

    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        _hasBitmap = false;
        bitmapPosition = Direction.LEFT;

        if (_ref == null) {
            _ref = WxButton.createInstance();
            buttonRef.ptr.create(Window.toRaw(parent), id, label, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var _hasBitmap:Bool; // we'll use this var to store if a bitmap has been set, this way we can set the position in any order

    public var bitmap(get, set):Bitmap;
    @:access(hx.widgets.Bitmap)
    private function get_bitmap():Bitmap {
        var b = buttonRef.ptr.getBitmap();
        var bmp:Bitmap = new Bitmap();
        bmp._ref = WxBitmap.createInstanceFromBitmap(b);
        return bmp;
    }
    @:access(hx.widgets.Bitmap)
    private function set_bitmap(value:Bitmap):Bitmap {
        buttonRef.ptr.setBitmap(value._ref.ref);
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

        #if (haxe_ver >= 3.3)
        buttonRef.ptr.setBitmapPosition(value);
        #else
        buttonRef.ptr.setBitmapPosition(untyped __cpp__("((wxDirection)value)"));
        #end
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var buttonRef(get, null):Pointer<WxButton>;
    private function get_buttonRef():Pointer<WxButton> {
       return Pointer.fromRaw(untyped __cpp__("(wxButton*)(_ref->get_raw())"));
    }

}
