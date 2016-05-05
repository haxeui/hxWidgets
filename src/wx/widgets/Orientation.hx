package wx.widgets;

#if (haxe_ver >= 3.3)
@:include("wx/window.h")
@:enum extern abstract Orientation(OrientationImpl) {
    @:native("wxVERTICAL")    var VERTICAL;
    @:native("wxHORIZONTAL")  var HORIZONTAL;
}

@:include("wx/window.h")
@:native("cpp::Struct<wxOrientation, cpp::EnumHandler>")
extern class OrientationImpl {
}
#else
@:headerCode("
#include <wx/window.h>
")
class Orientation {
    public static var VERTICAL:Int                = untyped __cpp__("wxVERTICAL");
    public static var HORIZONTAL:Int              = untyped __cpp__("wxHORIZONTAL");
}
#end