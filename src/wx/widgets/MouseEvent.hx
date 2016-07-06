package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxMouseEvent")
extern class MouseEvent extends Event implements MouseState {
}
