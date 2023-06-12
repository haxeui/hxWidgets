package wx.widgets;

@:include("wx/window.h")
extern enum abstract Orientation(OrientationImpl) {

    @:native("wxVERTICAL")    var VERTICAL;
    @:native("wxHORIZONTAL")  var HORIZONTAL;

}

@:include("wx/window.h")
@:native("cpp::Struct<wxOrientation, cpp::EnumHandler>")
extern class OrientationImpl {
}
