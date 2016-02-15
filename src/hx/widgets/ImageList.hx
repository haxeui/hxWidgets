package hx.widgets;

import wx.widgets.ImageList in WxImageList;

class ImageList {
    private var _ref:WxImageList;

    public function new(width:Int, height:Int) {
        _ref = WxImageList.createInstance();
        _ref.create(width, height);
    }

	@:access(hx.widgets.Bitmap)
    public function add(bitmap:Bitmap):Int {
        return _ref.add(bitmap._ref);
    }
}
