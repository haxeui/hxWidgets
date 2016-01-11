package hx.widgets;

@:headerCode("#include <wx/event.h>")
class Events {
	public static var EVT_BUTTON:Int = untyped __cpp__("wxEVT_BUTTON");
	public static var EVT_CHECKBOX:Int = untyped __cpp__("wxEVT_CHECKBOX");
	public static var EVT_SLIDER:Int = untyped __cpp__("wxEVT_SLIDER");
	public static var EVT_SCROLL_THUMBTRACK:Int = untyped __cpp__("wxEVT_SCROLL_THUMBTRACK");
	public static var EVT_SCROLL_THUMBRELEASE:Int = untyped __cpp__("wxEVT_SCROLL_THUMBRELEASE");
}
