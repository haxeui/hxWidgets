package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/colour.h")
@:unreflective
@:native("wxColour")
@:structAccess
extern class Colour {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxColour")            private static function _new(colour:Int):RawPointer<Colour>;
                                        public static inline function createInstance(colour:Int):Pointer<Colour> return Pointer.fromRaw(_new(colour));
                                                
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Set")                     public function set(r:Int, g:Int, b:Int, a:Int):Void;
    @:native("GetRGB")                  public function GetRGB():Int;
    @:native("SetRGB")                  public function SetRGB(col:Int):Void;
    @:native("GetRGBA")                 public function GetRGBA():Int;
    @:native("SetRGBA")                 public function SetRGBA(col:Int):Void;
}

/*
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

*/