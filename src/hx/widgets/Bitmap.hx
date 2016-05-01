package hx.widgets;

import cpp.Pointer;
import haxe.io.Bytes;
import haxe.Resource;
import wx.widgets.Bitmap in WxBitmap;

class Bitmap {
    private var _ref:Pointer<WxBitmap>;

	@:access(hx.widgets.Image)
    public function new(image:Image = null) {
        if (image != null) {
            _ref = WxBitmap.createInstance(image._ref.ref);
        }
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var width(get, null):Int;
    private function get_width():Int {
        return _ref.ptr.getWidth();
    }
    
    public var height(get, null):Int;
    private function get_height():Int {
        return _ref.ptr.getHeight();
    }
    
    public var isOk(get, null):Bool;
    private function get_isOk():Bool {
        return _ref.ptr.isOk();
    }
    
    @:access(hx.widgets.Rect)
    public function getSubBitmap(rect:Rect):Bitmap {
        var r = rect.createPointer();
        var sub:WxBitmap = _ref.ptr.getSubBitmap(r.ref);
        r.destroy();
        
        var bmp:Bitmap = new Bitmap();
        bmp._ref = WxBitmap.createInstanceFromBitmap(sub);
        
        return bmp;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromHaxeResource(resourceId:String):Bitmap {
        return fromHaxeBytes(Resource.getBytes(resourceId));
    }
    
    public static function fromHaxeBytes(bytes:Bytes):Bitmap {
        if (bytes == null) {
            throw "Could not load bitmap from null bytes";
        }

        var image:Image = new Image(bytes);
        return new Bitmap(image);
    }
}

/*
class Bitmap {
    private var _ref:WxBitmap;

	@:access(hx.widgets.Image)
    public function new(image:Image = null) {
        if (image != null) {
            _ref = WxBitmap.createInstance(image._ref);
        }
    }
    
    public function getWidth():Int {
        return _ref.getWidth();
    }
    
    public function getHeight():Int {
        return _ref.getHeight();
    }

    public function isOk():Bool {
        return _ref.isOk();
    }
    
    @:access(hx.widgets.Rect)
    public function getSubBitmap(rect:Rect):Bitmap {
        var ref:wx.widgets.Bitmap.BitmapImpl = _ref.getSubBitmap(rect._ref);
        var bmp:Bitmap = new Bitmap();
        bmp._ref = WxBitmap.createInstanceFromBitmap(ref);
        return bmp;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromHaxeResource(resourceId:String):Bitmap {
        return fromHaxeBytes(Resource.getBytes(resourceId));
    }
    
    public static function fromHaxeBytes(bytes:Bytes):Bitmap {
        if (bytes == null) {
            throw "Could not load bitmap from null bytes";
        }

        var image:Image = new Image(bytes);
        return new Bitmap(image);
    }
}
*/