package hx.widgets;

import wx.widgets.DataViewItem in WxDataViewItem;

class DataViewItem {
    private var _item:WxDataViewItem;
    
    public function new() {
    }
    
    public var id(get, null):Int;
    private function get_id():Int {
        if (!isOK) {
            return -1;
        }
        var id = _item.getId();
        var v = untyped __cpp__("(int){0}", id);
        return v;
    }
    
    public var isOK(get, null):Bool;
    private function get_isOK():Bool {
        return _item.isOK();
    }
}