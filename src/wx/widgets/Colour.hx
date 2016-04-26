package wx.widgets;

@:include("wx/colour.h")
@:unreflective
@:native("cpp::Reference<wxColour>")
extern class Colour extends ColourImpl {
    @:native("new wxColour")          public static function createInstance(colour:Int):Colour;
}

@:include("wx/colour.h")
@:unreflective
@:native("wxColour")
extern class ColourImpl {
    @:native("Set")                     public function set(r:Int, g:Int, b:Int, a:Int):Void;
}
