package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataViewColumn in WxDataViewColumn;
import wx.widgets.WxString;

@:access(hx.widgets.DataViewRenderer)
class DataViewColumn extends SettableHeaderColumn {
    public function new(title:String = null, renderer:DataViewRenderer = null, modelColumn:Int = -1) {
        if (title != null && renderer != null && modelColumn != -1) {
            var s = WxString.fromUTF8(title);
            var p = renderer.dataViewRendererRef.get_raw();
            _ref = WxDataViewColumn.createInstance(s, p, modelColumn).reinterpret();
        }
        super();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewColumnRef(get, null):Pointer<WxDataViewColumn>;
    private function get_dataViewColumnRef():Pointer<WxDataViewColumn> {
       return _ref.reinterpret();
    }
}