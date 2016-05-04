package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/brush.h")
@:unreflective
@:native("wxBrush")
extern class Brush {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBrush")             private static function _new():RawPointer<Brush>;
                                        public static inline function createInstance():Pointer<Brush> return Pointer.fromRaw(_new());
                                                
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetColour")               public function getColour():Colour;
    @:native("SetColour")               public function setColour(colour:Colour):Void;
}

/*
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
*/

