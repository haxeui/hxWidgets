package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

class Gauge extends Window {
	public function new(parent:Window, range:Int, id:Int = -1) {
		super(parent, id);
		
		var guageRef:WxGaugeRef = WxGaugeRef.createInstance();
		guageRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, range);
		_ref = cast guageRef;
	}
	
	public function setValue(value:Int) {
		guageRef.setValue(value);
	}
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	// HELPERS
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	private var guageRef(get, null):WxGaugeRef;
	private function get_guageRef():WxGaugeRef {
		return cast _ref;
	}
}

@:include("wx/gauge.h")
@:native("cpp.Reference<wxGauge>")
extern class WxGaugeRef extends WxGauge {
	@:native("new wxGauge") public static function createInstance():WxGaugeRef;
}

@:include("wx/gauge.h")
@:native("cpp.Reference<wxGauge>")
extern class WxGauge extends WxWindow {
	@:native("Create") public function create(parent:WxWindowRef, id:Int, range:Int):Bool;
	@:native("SetValue") public function setValue(value:Int):Void;
}