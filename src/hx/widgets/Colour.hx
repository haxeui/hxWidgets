package hx.widgets;

class Colour {
    private var _ref:WxColourRef;
    public function new(colour:Int) {
        _ref = WxColourRef.createInstance(colour);
    }
}

@:include("wx/colour.h")
@:unreflective
@:native("cpp::Reference<wxColour>")
extern class WxColourRef extends WxColour {
    @:native("new wxColour")          public static function createInstance(colour:Int):WxColourRef;
}

@:include("wx/colour.h")
@:unreflective
@:native("wxColour")
extern class WxColour {
}
