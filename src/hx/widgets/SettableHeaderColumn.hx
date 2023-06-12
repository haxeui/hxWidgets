package hx.widgets;

import cpp.Pointer;
import wx.widgets.SettableHeaderColumn in WxSettableHeaderColumn;
import wx.widgets.WxString;

class SettableHeaderColumn extends HeaderColumn {
    private override function set_title(value:String):String {
        var s = WxString.fromUTF8(value);
        settableHeaderColumnRef.ptr.setTitle(s);
        return value;
    }
    
    private override function set_width(value:Int):Int {
        settableHeaderColumnRef.ptr.setWidth(value);
        return value;
    }
    
    private override function set_alignment(value:Int):Int {
        settableHeaderColumnRef.ptr.setAlignment(cast value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var settableHeaderColumnRef(get, null):Pointer<WxSettableHeaderColumn>;
    private function get_settableHeaderColumnRef():Pointer<WxSettableHeaderColumn> {
       return _ref.reinterpret();
    }
}