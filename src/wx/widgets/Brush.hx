package wx.widgets;

@:include("wx/brush.h")
@:unreflective
@:native("cpp::Reference<wxBrush>")
extern class Brush extends BrushImpl {
    @:native("new wxBrush")          public static function createInstance():Brush;
}

@:include("wx/brush.h")
@:unreflective
@:native("wxBrush")
extern class BrushImpl {
    @:native("SetColour")          public function setColour(colour:Colour):Void;
}