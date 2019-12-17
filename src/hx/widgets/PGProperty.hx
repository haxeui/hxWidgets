package hx.widgets;

import cpp.Pointer;
import wx.widgets.PGProperty in WxPGProperty;
import wx.widgets.WxString;

class PGProperty extends Object {
    public function new() {
    }
    
    public var valueAsString(get, null):String;
    private function get_valueAsString():String {
        var r:WxString = propertyRef.ptr.getValueAsString();
        return new String(r.toUTF8().data());
    }
    
    public var name(get, null):String;
    private function get_name():String {
        var r:WxString = propertyRef.ptr.getName();
        return new String(r.toUTF8().data());
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyRef(get, null):Pointer<WxPGProperty>;
    private function get_propertyRef():Pointer<WxPGProperty> {
       return _ref.reinterpret();
    }
}