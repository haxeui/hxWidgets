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
}

@:include("wx/checkbox.h")
@:native("cpp.Reference<wxCheckBox>")
extern class WxCheckBoxRef extends WxCheckBox {
	@:native("new wxCheckBox") public static function createInstance():WxCheckBoxRef;
}

@:include("wx/checkbox.h")
@:native("cpp.Reference<wxCheckBox>")
extern class WxCheckBox extends WxWindow {
	@:native("Create") public function create(parent:WxWindowRef, id:Int, title:ConstCharStar):Bool;
}