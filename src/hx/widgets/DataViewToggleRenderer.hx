package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewToggleRenderer in WxDataViewToggleRenderer;
import wx.widgets.WxString;

class DataViewToggleRenderer extends DataViewRenderer {
    public function new() {
        if (_ref == null) {
            _ref = WxDataViewToggleRenderer.createInstance(WxString.fromUTF8("bool"), DataViewCellMode.ACTIVATABLE, Defs.ALIGN_CENTER).reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewToggleRendererRef(get, null):Pointer<WxDataViewToggleRenderer>;
    private function get_dataViewToggleRendererRef():Pointer<WxDataViewToggleRenderer> {
       return _ref.reinterpret();
    }
}