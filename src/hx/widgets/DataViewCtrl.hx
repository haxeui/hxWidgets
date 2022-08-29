package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewCtrl in WxDataViewCtrl;
import wx.widgets.WxString;

@:access(hx.widgets.HeaderColumn)
@:access(hx.widgets.DataViewItem)
class DataViewCtrl extends Control {
    public function getColumn(pos:Int):DataViewColumn {
        var p = dataViewCtrlRef.ptr.getColumn(pos);
        var col = new DataViewColumn();
        col._ref = Pointer.fromRaw(p).reinterpret();
        return col;
    }
    
    public var columnCount(get, null):Int;
    private function get_columnCount():Int {
        return dataViewCtrlRef.ptr.getColumnCount();
    }
    
    public function collapse(item:DataViewItem) {
        dataViewCtrlRef.ptr.collapse(item._item);
    }
    
    public function expand(item:DataViewItem) {
        dataViewCtrlRef.ptr.expand(item._item);
    }
    
    public var selection(get, set):DataViewItem;
    private function get_selection():DataViewItem {
        var itemId = dataViewCtrlRef.ptr.getSelection();
        var dataViewItem = new DataViewItem();
        dataViewItem._item = itemId;
        return dataViewItem;
    }
    private function set_selection(value:DataViewItem):DataViewItem {
        dataViewCtrlRef.ptr.select(value._item);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewCtrlRef(get, null):Pointer<WxDataViewCtrl>;
    private function get_dataViewCtrlRef():Pointer<WxDataViewCtrl> {
       return _ref.reinterpret();
    }
}