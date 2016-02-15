package hx.widgets;

import wx.widgets.StaticBitmap in WxStaticBitmap;

class StaticBitmap extends Window {
	@:access(hx.widgets.Bitmap)
	@:access(hx.widgets.Window)
    public function new(parent:Window, bitmap:Bitmap, id:Int = -1) {
        super(parent, id);
        
        var bitmapRef:WxStaticBitmap = WxStaticBitmap.createInstance();
        bitmapRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, bitmap._ref);
        _ref = cast bitmapRef;
    }
}
