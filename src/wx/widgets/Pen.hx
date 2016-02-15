package wx.widgets;

@:include("wx/pen.h")
@:unreflective
@:native("cpp::Reference<wxPen>")
extern class Pen extends PenImpl {
    @:native("new wxPen")          public static function createInstance():Pen;
}

@:include("wx/pen.h")
@:unreflective
@:native("wxPen")
extern class PenImpl {
    @:native("SetColour")          public function setColour(colour:Colour):Void;
    @:native("GetWidth")           public function getWidth():Int;
    @:native("SetWidth")           public function setWidth(width:Int):Void;
}
