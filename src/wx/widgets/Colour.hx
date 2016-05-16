package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.UInt8;
import cpp.UInt32;

@:include("wx/colour.h")
@:unreflective
@:native("wxColour")
@:structAccess
extern class Colour extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxColour")            private static function _new(colour:UInt32):RawPointer<Colour>;
                                        public static inline function createInstance(colour:UInt32):Pointer<Colour> {
                                            return Pointer.fromRaw(_new(colour));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Set")                     public function set(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Void;
    @:native("GetRGB")                  public function GetRGB():UInt32;
    @:native("SetRGB")                  public function SetRGB(col:UInt32):Void;
    @:native("GetRGBA")                 public function GetRGBA():UInt32;
    @:native("SetRGBA")                 public function SetRGBA(col:UInt32):Void;

}
