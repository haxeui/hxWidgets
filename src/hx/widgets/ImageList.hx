package hx.widgets;

import cpp.Pointer;
import wx.widgets.ImageList in WxImageList;

class ImageList {
    private var _ref:Pointer<WxImageList>;

    public function new(width:Int = -1, height:Int = -1) {
        if (width != -1 && height != -1) {
            _ref = WxImageList.createInstance();
            _ref.ptr.create(width, height);
        }
    }

	@:access(hx.widgets.Bitmap)
    public function add(bitmap:Bitmap):Int {
        return _ref.ptr.add(bitmap._ref.ref);
    }
}
