package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewProgressRenderer in WxDataViewProgressRenderer;
import wx.widgets.WxString;

class DataViewProgressRenderer extends DataViewRenderer {
    public function new() {
        if (_ref == null) {
            _ref = WxDataViewProgressRenderer.createInstance(WxString.fromUTF8(""), WxString.fromUTF8("long"), DataViewCellMode.INERT, Defs.ALIGN_CENTER_VERTICAL).reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewProgressRendererRef(get, null):Pointer<WxDataViewProgressRenderer>;
    private function get_dataViewProgressRendererRef():Pointer<WxDataViewProgressRenderer> {
       return _ref.reinterpret();
    }
}