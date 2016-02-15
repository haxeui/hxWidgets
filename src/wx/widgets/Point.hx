package wx.widgets;

@:include("wx/gdicmn.h")
@:unreflective
@:native("cpp::Reference<wxPoint>")
extern class Point extends PointImpl {
    @:native("new wxPoint")     public static function createInstance():Point;
}

@:include("wx/gdicmn.h")
@:unreflective
@:native("wxPoint")
extern class PointImpl {
    @:native("x")               public var x:Int;
    @:native("y")               public var y:Int;
}
