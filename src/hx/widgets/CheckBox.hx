package hx.widgets;

import cpp.Pointer;
import wx.widgets.CheckBox in WxCheckBox;

class CheckBox extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var checkboxRef:Pointer<WxCheckBox> = WxCheckBox.createInstance();
            checkboxRef.ptr.create(parent != null ? parent._ref : null, id, label, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            _ref = cast checkboxRef.raw;
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var value(get, set):Bool;
    private function get_value():Bool {
        return checkboxRef.ptr.getValue();
    }
    private function set_value(value:Bool):Bool {
        checkboxRef.ptr.setValue(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var checkboxRef(get, null):Pointer<WxCheckBox>;
    private inline function get_checkboxRef():Pointer<WxCheckBox> {
        return cast _ref.raw;
    }
}

/*
class CheckBox extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var checkboxRef:WxCheckBox = WxCheckBox.createInstance();
            checkboxRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = checkboxRef;
        }
        
        super(parent, id);
    }
    
    public var value(get, set):Bool;
    private function get_value():Bool {
        return checkboxRef.getValue();
    }
    private function set_value(value:Bool):Bool {
        checkboxRef.setValue(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var checkboxRef(get, null):WxCheckBox;
    private inline function get_checkboxRef():WxCheckBox {
        return cast _ref;
    }
}
*/