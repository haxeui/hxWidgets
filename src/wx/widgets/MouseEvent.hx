package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("cpp::Reference<wxMouseEvent>")
extern class MouseEvent extends MouseEventImpl {
}

@:include("wx/event.h")
@:unreflective
@:native("wxMouseEvent")
extern class MouseEventImpl extends Event {
	@:native("GetX")               public function getX():Int;
	@:native("GetY")               public function getY():Int;
 }
