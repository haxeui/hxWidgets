package hx.widgets;

@:headerCode("#include <wx/event.h>")
class EventType {
	public static var BUTTON:Int = untyped __cpp__("wxEVT_BUTTON");
	public static var CHECKBOX:Int = untyped __cpp__("wxEVT_CHECKBOX");
	public static var SLIDER:Int = untyped __cpp__("wxEVT_SLIDER");
	public static var SCROLL_THUMBTRACK:Int = untyped __cpp__("wxEVT_SCROLL_THUMBTRACK");
	public static var SCROLL_THUMBRELEASE:Int = untyped __cpp__("wxEVT_SCROLL_THUMBRELEASE");
}
