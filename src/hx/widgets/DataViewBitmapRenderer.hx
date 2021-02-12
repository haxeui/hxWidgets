package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewBitmapRenderer in WxDataViewBitmapRenderer;
import wx.widgets.WxString;

class DataViewBitmapRenderer extends DataViewRenderer {
    public function new() {
        if (_ref == null) {
            _ref = WxDataViewBitmapRenderer.createInstance(WxString.fromUTF8("wxBitmap"), DataViewCellMode.INERT, Defs.ALIGN_CENTER_VERTICAL | Defs.ALIGN_CENTER).reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewBitmapRendererRef(get, null):Pointer<WxDataViewBitmapRenderer>;
    private function get_dataViewBitmapRendererRef():Pointer<WxDataViewBitmapRenderer> {
       return _ref.reinterpret();
    }
}