package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewRenderer in WxDataViewRenderer;

class DataViewRenderer extends Object {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewRendererRef(get, null):Pointer<WxDataViewRenderer>;
    private function get_dataViewRendererRef():Pointer<WxDataViewRenderer> {
       return _ref.reinterpret();
    }
}