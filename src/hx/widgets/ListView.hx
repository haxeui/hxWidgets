package hx.widgets;

import cpp.Pointer;
import wx.widgets.ListView in WxListView;
import hx.widgets.styles.ListCtrlStyle;

class ListView extends ListCtrl{
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        
        if (style == 0) {
            style = ListCtrlStyle.ICON;
        }
        
        if (_ref == null) {
            _ref = WxListView.createInstance().reinterpret();
            listViewRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, style, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var listViewRef(get, null):Pointer<WxListView>;
    private function get_listViewRef():Pointer<WxListView> {
       return _ref.reinterpret();
    }
}