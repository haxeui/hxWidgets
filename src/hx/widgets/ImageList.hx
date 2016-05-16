package hx.widgets;

import cpp.Pointer;
import wx.widgets.ImageList in WxImageList;

class ImageList extends Object {

    public function new(width:Int = -1, height:Int = -1) {
        if (width != -1 && height != -1) {
            _ref = WxImageList.createInstance().reinterpret();
            imagelistRef.ptr.create(width, height);
        }
    }

	@:access(hx.widgets.Bitmap)
    public function add(bitmap:Bitmap):Int {
        return imagelistRef.ptr.add(bitmap.bitmapRef.ref);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var imagelistRef(get, null):Pointer<WxImageList>;
    private function get_imagelistRef():Pointer<WxImageList> {
        return _ref.reinterpret();
    }

}
