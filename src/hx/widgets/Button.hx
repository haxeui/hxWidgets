package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.Button in WxButton;
import wx.widgets.Bitmap in WxBitmap;

@:unreflective
class Button extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxButton.createInstance();
            buttonRef.ptr.create(Window.toRaw(parent), id, label, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var _hasBitmap:Bool = false; // we'll use this var to store if a bitmap has been set, this way we can set the position in any order

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
        if (_hasBitmap == false) {
            _hasBitmap = true;
            set_bitmapPosition(_bitmapPosition);
        }
        return value;
    }

    private var _bitmapPosition:Direction = Direction.LEFT;
    public var bitmapPosition(get, set):Direction;
    public function get_bitmapPosition():Direction {
        return _bitmapPosition;
    }

    public function set_bitmapPosition(value:Direction):Direction {
        _bitmapPosition = value;
        if (_hasBitmap == false) {
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

/*
import cpp.Pointer;
import wx.widgets.Button in WxButton;

@:unreflective
class Button extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var buttonRef:WxButton = WxButton.createInstance();
            buttonRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = buttonRef;
        }

        super(parent, id);
    }

    private var _hasBitmap:Bool = false;
    @:access(hx.widgets.Bitmap)
    public function setBitmap(bitmap:Bitmap) {
        buttonRef.setBitmap(bitmap._ref);
        if (_hasBitmap == false) {
            buttonRef.setBitmapPosition(#if (haxe_ver >= 3.3) _dir #else untyped __cpp__("((wxDirection)_dir)")#end);
        }
        _hasBitmap = true;
    }

    private var _dir:Direction = Direction.LEFT;
    public function setBitmapPosition(dir:Direction) {
        if (_hasBitmap == false) {
            _dir = dir;
            return;
        }
        buttonRef.setBitmapPosition(#if (haxe_ver >= 3.3) dir #else untyped __cpp__("((wxDirection)dir)")#end);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var buttonRef(get, null):WxButton;
    private function get_buttonRef():WxButton {
        return cast _ref;
    }
}
*/