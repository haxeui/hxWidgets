package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewCtrl in WxDataViewCtrl;

@:access(hx.widgets.HeaderColumn)
class DataViewCtrl extends Control {
    public function getColumn(pos:Int):DataViewColumn {
        var p = dataViewCtrlRef.ptr.getColumn(pos);
        var col = new DataViewColumn();
        col._ref = Pointer.fromRaw(p).reinterpret();
        return col;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewCtrlRef(get, null):Pointer<WxDataViewCtrl>;
    private function get_dataViewCtrlRef():Pointer<WxDataViewCtrl> {
       return _ref.reinterpret();
    }
}