package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewColumn in WxDataViewColumn;

class DataViewColumn extends SettableHeaderColumn {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewColumnRef(get, null):Pointer<WxDataViewColumn>;
    private function get_dataViewColumnRef():Pointer<WxDataViewColumn> {
       return _ref.reinterpret();
    }
}