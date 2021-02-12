package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewTextRenderer in WxDataViewTextRenderer;
import wx.widgets.WxString;

class DataViewTextRenderer extends DataViewRenderer {
    public function new() {
        if (_ref == null) {
            _ref = WxDataViewTextRenderer.createInstance(WxString.fromUTF8("string"), DataViewCellMode.INERT, Defs.ALIGN_CENTER_VERTICAL).reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewTextRendererRef(get, null):Pointer<WxDataViewTextRenderer>;
    private function get_dataViewTextRendererRef():Pointer<WxDataViewTextRenderer> {
       return _ref.reinterpret();
    }
}