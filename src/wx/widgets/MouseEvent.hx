package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxMouseEvent")
@:structAccess
extern class MouseEvent extends Event implements MouseState {
    @:native("GetX")               public function getX():Int;
    @:native("GetY")               public function getY():Int;
}
