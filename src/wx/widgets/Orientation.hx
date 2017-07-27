package wx.widgets;

@:include("wx/window.h")
@:enum extern abstract Orientation(OrientationImpl) {

    @:native("wxVERTICAL")    var VERTICAL;
    @:native("wxHORIZONTAL")  var HORIZONTAL;

}

@:include("wx/window.h")
@:unreflective
@:native("wxOrientation")
extern class OrientationImpl {
}
