package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

class CheckBox extends Window {
    public function new(parent:Window, label:String, id:Int = -1) {
        super(parent, id);
        
        var checkboxRef:WxCheckBoxRef = WxCheckBoxRef.createInstance();
        checkboxRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label);
        _ref = cast checkboxRef;
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
    private var checkboxRef(get, null):WxCheckBoxRef;
    private function get_checkboxRef():WxCheckBoxRef {
        return cast _ref;
    }
}

@:include("wx/checkbox.h")
@:native("cpp.Reference<wxCheckBox>")
extern class WxCheckBoxRef extends WxCheckBox {
    @:native("new wxCheckBox")      public static function createInstance():WxCheckBoxRef;
}

@:include("wx/checkbox.h")
@:native("wxCheckBox")
extern class WxCheckBox extends WxWindow {
    @:native("Create")              public function create(parent:WxWindowRef, id:Int, title:ConstCharStar):Bool;
    @:native("SetValue")            public function setValue(value:Bool):Void;
    @:native("GetValue")            public function getValue():Bool;
}
