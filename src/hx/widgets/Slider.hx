package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:headerCode("#include <wx/slider.h>")
class SliderStyle {
	public static var HORIZONTAL:Int = 		untyped __cpp__("wxSL_HORIZONTAL"); 	// Displays the slider horizontally (this is the default).
	public static var VERTICAL:Int = 		untyped __cpp__("wxSL_VERTICAL");		// Displays the slider vertically.
	public static var AUTOTICKS:Int = 		untyped __cpp__("wxSL_AUTOTICKS");		// Displays tick marks. Windows only.
	public static var MIN_MAX_LABELS:Int = 	untyped __cpp__("wxSL_MIN_MAX_LABELS");	// Displays minimum, maximum labels (new since wxWidgets 2.9.1).
	public static var VALUE_LABEL:Int = 	untyped __cpp__("wxSL_VALUE_LABEL");	// Displays value label (new since wxWidgets 2.9.1).
	public static var LABELS:Int = 			untyped __cpp__("wxSL_LABELS");			// Displays minimum, maximum and value labels (same as wxSL_VALUE_LABEL and wxSL_MIN_MAX_LABELS together).
	public static var LEFT:Int = 			untyped __cpp__("wxSL_LEFT");			// Displays ticks on the left and forces the slider to be vertical.
	public static var RIGHT:Int = 			untyped __cpp__("wxSL_RIGHT");			// Displays ticks on the right and forces the slider to be vertical.
	public static var TOP:Int = 			untyped __cpp__("wxSL_TOP");			// Displays ticks on the top.
	public static var BOTTOM:Int = 			untyped __cpp__("wxSL_BOTTOM");			// Displays ticks on the bottom (this is the default).
	public static var SELRANGE:Int = 		untyped __cpp__("wxSL_SELRANGE");		// Allows the user to select a range on the slider. Windows only.
	public static var INVERSE:Int = 		untyped __cpp__("wxSL_INVERSE");		// Inverses the minimum and maximum endpoints on the slider. Not compatible with wxSL_SELRANGE.
	
	public static var DEFAULT:Int = 		HORIZONTAL;
}

class Slider extends Window {
	public function new(parent:Window, value:Int = 0, min:Int = 0, max:Int = 100, style:Int = -1, id:Int = -1) {
		super(parent, id);

		if (style == -1) {
			style = SliderStyle.DEFAULT;
		}
		
		var sliderRef:WxSliderRef = WxSliderRef.createInstance();
		sliderRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, value, min, max, Point.defaultPositionRef, Size.defaultSizeRef, style);
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
	
	public function setSelection(startPos:Int, endPos:Int) {
		sliderRef.setSelection(startPos, endPos);
	}
	
	public var selectionStart(get, set):Int;
	private function get_selectionStart():Int {
		return sliderRef.getSelStart();
	}
	private function set_selectionStart(value:Int):Int {
		setSelection(value, selectionEnd);
		return value;
	}

	public var selectionEnd(get, set):Int;
	private function get_selectionEnd():Int {
		return sliderRef.getSelEnd();
	}
	private function set_selectionEnd(value:Int):Int {
		setSelection(selectionStart, value);
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
	@:native("new wxSlider") 	public static function createInstance():WxSliderRef;
}

@:include("wx/slider.h")
@:native("wxSlider")
extern class WxSlider extends WxWindow {
	@:native("Create") 			public function create(parent:WxWindowRef, id:Int, value:Int, minValue:Int, maxValue:Int, point:WxPointRef, size:WxSizeRef, style:Int):Bool;
	@:native("SetValue") 		public function setValue(value:Int):Void;
	@:native("GetValue") 		public function getValue():Int;
	@:native("SetMin") 			public function setMin(value:Int):Void;
	@:native("GetMin") 			public function getMin():Int;
	@:native("SetMax") 			public function setMax(value:Int):Void;
	@:native("GetMax") 			public function getMax():Int;
	@:native("SetSelection")	public function setSelection(startPos:Int, endPos:Int):Void;
	@:native("GetSelStart") 	public function getSelStart():Int;
	@:native("GetSelEnd") 		public function getSelEnd():Int;
}