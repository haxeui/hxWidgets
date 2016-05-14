package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/pen.h")
@:unreflective
@:native("wxPen")
extern class Pen {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPen")               private static function _new():RawPointer<Pen>;
                                        public static inline function createInstance():Pointer<Pen> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetColour")               public function getColour():Colour;
    @:native("SetColour")               public function setColour(colour:Colour):Void;
    @:native("GetWidth")                public function getWidth():Int;
    @:native("SetWidth")                public function setWidth(width:Int):Void;

}
