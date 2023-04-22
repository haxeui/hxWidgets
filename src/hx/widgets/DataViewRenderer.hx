package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewRenderer in WxDataViewRenderer;

class DataViewRenderer extends Object {
    public var alignment(get, set):Int;
    private function get_alignment():Int {
        return cast dataViewRendererRef.ptr.getAlignment();
    }
    private function set_alignment(value:Int):Int {
        dataViewRendererRef.ptr.setAlignment(cast value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewRendererRef(get, null):Pointer<WxDataViewRenderer>;
    private function get_dataViewRendererRef():Pointer<WxDataViewRenderer> {
       return _ref.reinterpret();
    }
}