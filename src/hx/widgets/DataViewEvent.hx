package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewEvent in WxDataViewEvent;

@:access(hx.widgets.DataViewItem)
class DataViewEvent extends Event {
    public var column(get, null):Int;
    private function get_column():Int {
        return dataViewEventRef.ptr.getColumn();
    }
    
    public var selection(get, null):Int;
    private function get_selection():Int {
        return dataViewEventRef.ptr.getSelection();
    }
    
    public var item(get, null):DataViewItem;
    private function get_item():DataViewItem {
        var i = new DataViewItem();
        var itemRef = dataViewEventRef.ptr.getItem();
        i._item = itemRef;
        return i;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewEventRef(get, null):Pointer<WxDataViewEvent>;
    private function get_dataViewEventRef():Pointer<WxDataViewEvent> {
        return _ref.reinterpret();
    }
}