package hx.widgets;

import cpp.Pointer;
import wx.widgets.Icon in WxIcon;

@:access(hx.widgets.Bitmap)
class Icon extends GDIObject {
    public function new() {
        if (_ref == null) {
            _ref = WxIcon.createInstance().reinterpret();
        }
    }
    
    public function copyFromBitmap(bmp:Bitmap) {
        iconRef.ptr.copyFromBitmap(bmp.bitmapRef.ref);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var iconRef(get, null):Pointer<WxIcon>;
    private function get_iconRef():Pointer<WxIcon> {
       return _ref.reinterpret();
    }
}