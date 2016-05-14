package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/gdicmn.h")
@:unreflective
@:native("wxPoint")
@:structAccess
extern class Point {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPoint")             private static function _new(x:Int, y:Int):RawPointer<Point>;
                                        public static inline function createInstance(x:Int, y:Int):Pointer<Point> {
                                            return Pointer.fromRaw(_new(x, y));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance vars
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("x")                       public var x:Int;
    @:native("y")                       public var y:Int;

}
