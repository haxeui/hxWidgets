package hx.widgets;

import cpp.Pointer;
import wx.widgets.PGProperty in WxPGProperty;
import wx.widgets.Variant;
import wx.widgets.WxString;
import wx.widgets.WxString;
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
    
    public function setAttribute(name:String, value:Any) {
        var v:Pointer<Variant> = null;
        switch (Type.typeof(value)) {
            case TBool:
                v = Variant.fromBool(value);
            case TInt:    
                v = Variant.fromInt(value);
            case TFloat:
                v = Variant.fromFloat(value);
            case TClass(String):        
                v = Variant.fromString(WxString.fromUTF8(Std.string(value)));
            case _:    
                v = Variant.fromString(WxString.fromUTF8(Std.string(value)));
        }
        propertyRef.ptr.setAttribute(WxString.fromUTF8(name), v.ref);
        v.destroy();
    }

    public function setValue(value:Any) {
        var v:Pointer<Variant> = null;
        switch (Type.typeof(value)) {
            case TBool:
                v = Variant.fromBool(value);
            case TInt:    
                v = Variant.fromInt(value);
            case TFloat:
                v = Variant.fromFloat(value);
            case TClass(String):        
                v = Variant.fromString(WxString.fromUTF8(Std.string(value)));
            case _:    
                v = Variant.fromString(WxString.fromUTF8(Std.string(value)));
        }
        propertyRef.ptr.setValue(v.ref);
        v.destroy();
    }

    public function getValue():Any {
        var v = propertyRef.ptr.getValue();
        var variantType:String = new String(v.getType().toUTF8().data());
        var value:Any = null;
        switch (variantType) {
            case "bool":
                value = v.getBool();
            case "double":
                value = v.getDouble();
            case "long":
                value = v.getLong();
            case "string":
                value = new String(v.getString().toUTF8().data());
            case _:
                value = new String(v.getString().toUTF8().data());
        }
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var propertyRef(get, null):Pointer<WxPGProperty>;
    private function get_propertyRef():Pointer<WxPGProperty> {
       return _ref.reinterpret();
    }
}