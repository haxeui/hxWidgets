package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:headerCode("#include <wx/radiobut.h>")
class RadioButtonStyle {
	public static var GROUP:Int =       untyped __cpp__("wxRB_GROUP");      // Marks the beginning of a new group of radio buttons.
	public static var SINGLE:Int =      untyped __cpp__("wxRB_SINGLE");     // In some circumstances, radio buttons that are not consecutive siblings trigger a hang bug in Windows (only). If this happens, add this style to mark the button as not belonging to a group, and implement the mutually-exclusive group behaviour yourself.
}

class RadioButton extends Window {
    public function new(parent:Window, title:String, style:Int = 0, id:Int = -1)  {
        super(parent, id);
        
		var radioRef:WxRadioButtonRef = WxRadioButtonRef.createInstance();
		radioRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title, Point.defaultPositionRef, Size.defaultSizeRef, style);
		_ref = cast radioRef;
    }
	
	public var value(get, set):Bool;
	private function get_value():Bool {
		return radioRef.getValue();
	}
	private function set_value(value:Bool):Bool {
		radioRef.setValue(value);
		return value;
	}
    
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	// HELPERS
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	private var radioRef(get, null):WxRadioButtonRef;
	private function get_radioRef():WxRadioButtonRef {
		return cast _ref;
	}
}

@:include("wx/radiobut.h")
@:native("cpp.Reference<wxRadioButton>")
extern class WxRadioButtonRef extends WxRadioButton {
	@:native("new wxRadioButton")   public static function createInstance():WxRadioButtonRef;
}

@:include("wx/radiobut.h")
@:native("wxRadioButton")
extern class WxRadioButton extends WxWindow {
	@:native("Create")              public function create(parent:WxWindowRef, id:Int, title:ConstCharStar, point:WxPointRef, size:WxSizeRef, style:Int):Bool;
	@:native("SetValue")            public function setValue(value:Bool):Void;
	@:native("GetValue")            public function getValue():Bool;
}