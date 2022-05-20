package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import haxe.io.Bytes;
import haxe.Resource;
import wx.widgets.Bitmap in WxBitmap;
import wx.widgets.Image in WxImage;

class Bitmap extends GDIObject {

    @:access(hx.widgets.Image)
    public function new(image:Image = null, bitmap:Pointer<WxBitmap> = null) {
        if (image != null) {
            _ref = WxBitmap.createInstance(image.imageRef.ref).reinterpret();
        } else if (bitmap != null) {
            _ref = bitmap.reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var width(get, null):Int;
    private function get_width():Int {
        return bitmapRef.ptr.getWidth();
    }

    public var height(get, null):Int;
    private function get_height():Int {
        return bitmapRef.ptr.getHeight();
    }

    public var isOk(get, null):Bool;
    private function get_isOk():Bool {
        return bitmapRef.ptr.isOk();
    }

    @:access(hx.widgets.Rect)
    public function getSubBitmap(rect:Rect):Bitmap {
        var r = rect.createPointer();
        var sub:WxBitmap = bitmapRef.ptr.getSubBitmap(r.ref);
        r.destroy();

        var bmp:Bitmap = new Bitmap();
        bmp._ref = WxBitmap.createInstanceFromBitmap(sub).reinterpret();

        return bmp;
    }

    public function convertToImage():Image {
        var r = bitmapRef.ptr.convertToImage();
        var copy = WxImage.createInstanceFromSize(r.getWidth(), r.getHeight());
        copy.ptr.paste(r, 0, 0);
        var image = new Image();
        image._ref = copy.reinterpret();
        r.destroy();
        return image;
    }
    
    public function equals(bmp:Bitmap):Bool {
        return bmp._ref.get_raw() == this._ref.get_raw();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromHaxeResource(resourceId:String):Bitmap {
        return fromHaxeBytes(Resource.getBytes(resourceId));
    }

    public static function fromHaxeBytes(bytes:Bytes):Bitmap {
        if (bytes == null) {
            return null;
        }

        var image:Image = new Image(bytes);
        return new Bitmap(image);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var bitmapRef(get, null):Pointer<WxBitmap>;
    private function get_bitmapRef():Pointer<WxBitmap> {
        return _ref.reinterpret();
    }
}
