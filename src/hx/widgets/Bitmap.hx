package hx.widgets;

import haxe.io.Bytes;
import haxe.Resource;
import wx.widgets.Bitmap in WxBitmap;

class Bitmap {
    private var _ref:WxBitmap;

	@:access(hx.widgets.Image)
    public function new(image:Image) {
        _ref = WxBitmap.createInstance(image._ref);
    }
    
    public function getWidth():Int {
        return _ref.getWidth();
    }
    
    public function getHeight():Int {
        return _ref.getHeight();
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
