package hx.widgets;

import cpp.Pointer;
import wx.widgets.SearchCtrl in WxSearchCtrl;
import wx.widgets.WxString;

class SearchCtrl extends TextCtrl {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxSearchCtrl.createInstance().reinterpret();
            var str = WxString.fromUTF8(text);
            searchCtrlRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }
    
    private override function get_value():String {
        var r:WxString = searchCtrlRef.ptr.getValue();
        return new String(r.toUTF8().data());
    }
    private override function set_value(value:String):String {
        var s = WxString.fromUTF8(value);
        searchCtrlRef.ptr.setValue(s);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var searchCtrlRef(get, null):Pointer<WxSearchCtrl>;
    private function get_searchCtrlRef():Pointer<WxSearchCtrl> {
        return _ref.reinterpret();
    }
}