package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

class Slider extends Window {
	public function new(parent:Window, value:Int = 0, min:Int = 0, max:Int = 100, id:Int = -1) {
		super(parent, id);
		
		var sliderRef:WxSliderRef = WxSliderRef.createInstance();
		sliderRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, value, min, max);
		_ref = cast sliderRef;
	}
	
	public var value(get, set):Int;
	private function get_value():Int {
		return sliderRef.getValue();
	}
	private function set_value(value:Int):Int {
		sliderRef.setValue(value);
		return value;
	}

	public var min(get, set):Int;
	private function get_min():Int {
		return sliderRef.getMin();
	}
	private function set_min(value:Int):Int {
		sliderRef.setMin(value);
		return value;
	}

	public var max(get, set):Int;
	private function get_max():Int {
		return sliderRef.getMax();
	}
	private function set_max(value:Int):Int {
		sliderRef.setMax(value);
		return value;
	}
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	// HELPERS
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	private var sliderRef(get, null):WxSliderRef;
	private function get_sliderRef():WxSliderRef {
		return cast _ref;
	}
}

@:include("wx/slider.h")
@:native("cpp.Reference<wxSlider>")
extern class WxSliderRef extends WxSlider {
	@:native("new wxSlider") public static function createInstance():WxSliderRef;
}

@:include("wx/slider.h")
@:native("wxSlider")
extern class WxSlider extends WxWindow {
	@:native("Create") public function create(parent:WxWindowRef, id:Int, value:Int, minValue:Int, maxValue:Int):Bool;
	@:native("SetValue") public function setValue(value:Int):Void;
	@:native("GetValue") public function getValue():Int;
	@:native("SetMin") public function setMin(value:Int):Void;
	@:native("GetMin") public function getMin():Int;
	@:native("SetMax") public function setMax(value:Int):Void;
	@:native("GetMax") public function getMax():Int;
}