package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewSpinRenderer in WxDataViewSpinRenderer;

class DataViewSpinRenderer extends DataViewCustomRenderer {
    public function new(min:Int = 0, max:Int = 100) {
        if (_ref == null) {
            _ref = WxDataViewSpinRenderer.createInstance(min, max, DataViewCellMode.EDITABLE, Defs.ALIGN_CENTER_VERTICAL).reinterpret();
        }
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewSpinRendererRef(get, null):Pointer<WxDataViewSpinRenderer>;
    private function get_dataViewSpinRendererRef():Pointer<WxDataViewSpinRenderer> {
       return _ref.reinterpret();
    }
}