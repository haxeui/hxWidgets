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
}
