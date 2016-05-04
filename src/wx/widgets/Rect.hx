package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/gdicmn.h")
@:unreflective
@:native("wxRect")
@:structAccess
extern class Rect {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxRect")              private static function _new(x:Int, y:Int, width:Int, height:Int):RawPointer<Rect>;
                                        public static inline function createInstance(x:Int, y:Int, width:Int, height:Int):Pointer<Rect> return Pointer.fromRaw(_new(x, y, width, height));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetX")                    public function getX():Int;
    @:native("SetX")                    public function setX(value:Int):Void;
    @:native("GetY")                    public function getY():Int;
    @:native("SetY")                    public function setY(value:Int):Void;

    @:native("GetWidth")                public function getWidth():Int;
    @:native("SetWidth")                public function setWidth(value:Int):Void;
    @:native("GetHeight")               public function getHeight():Int;
    @:native("SetHeight")               public function setHeight(value:Int):Void;
}
