package hx.widgets;

import wx.widgets.StaticBitmap in WxStaticBitmap;

class StaticBitmap extends Control {
	@:access(hx.widgets.Bitmap)
	@:access(hx.widgets.Window)
    public function new(parent:Window, bitmap:Bitmap, id:Int = -1) {
        if (_ref == null) {        
            var bitmapRef:WxStaticBitmap = WxStaticBitmap.createInstance();
            bitmapRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, bitmap._ref);
            _ref = bitmapRef;
        }
        
        super(parent, id);
    }
    
    @:access(hx.widgets.Bitmap)
    public function setBitmap(bitmap:Bitmap) {
        bitmapRef.setBitmap(bitmap._ref);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var bitmapRef(get, null):WxStaticBitmap;
    private function get_bitmapRef():WxStaticBitmap {
        return cast _ref;
    }
}
