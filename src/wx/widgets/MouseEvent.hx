package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxMouseEvent")
extern class MouseEvent extends Event implements MouseState {

//TODO: both are in MouseState
	@:native("GetX")               public function getX():Int;
	@:native("GetY")               public function getY():Int;

}
