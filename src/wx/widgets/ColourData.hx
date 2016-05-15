package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/colourdata.h")
@:unreflective
@:native("wxColourData")
@:structAccess
extern class ColourData {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxColourData")        private static function _new():RawPointer<ColourData>;
                                        public static inline function createInstance():Pointer<ColourData> return Pointer.fromRaw(_new());
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetColour")               public function getColour():Colour;
    @:native("SetColour")               public function setColour(colour:Colour):Void;
    @:native("GetChooseFull")           public function getChooseFull():Bool;
    @:native("SetChooseFull")           public function setChooseFull(flag:Bool):Void;
}