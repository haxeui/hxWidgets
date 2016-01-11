package hx.widgets;

import hx.widgets.EvtHandler.WxEvtHandler;

class Window extends EvtHandler {
	public function new(parent:Window, id:Int) {
		super();
	}

	public function show(value:Bool) {
		_ref.show(value);
	}
	
	public function setSize(x:Int, y:Int, width:Int, height:Int) {
		_ref.setSize(x, y, width, height);
	}
	
	public function move(x:Int, y:Int) {
		_ref.move(x, y);
	}
	
	public function addChild(child:Window) {
		_ref.addChild(child._ref);
	}
	
	public function setBackgroundColour(colour:Int) {
		_ref.setBackgroundColour(colour);
	}

	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	// HELPERS
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	// STATIC HELPERS
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	private static var nullWindowRef(get, null):WxWindowRef;
	private static inline function get_nullWindowRef():WxWindowRef {
		return cast 0;
	}
	
}

@:include("wx/window.h")
@:native("cpp.Reference<wxWindow>")
extern class WxWindowRef extends WxWindow {
	@:native("new wxWindow") public static function createInstance():WxWindowRef;
}

@:include("wx/window.h")
@:native("wxWindow")
extern class WxWindow extends WxEvtHandler {
	@:native("Show") public function show(value:Bool):Void;
	@:native("SetSize") public function setSize(x:Int, y:Int, width:Int, height:Int):Void;
	@:native("Move") public function move(x:Int, y:Int):Void;
	@:native("AddChild") public function addChild(child:WxWindowRef):Void;
	@:native("SetBackgroundColour") public function setBackgroundColour(colour:Int):Void;
}