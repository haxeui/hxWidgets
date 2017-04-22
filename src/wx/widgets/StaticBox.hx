package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/statbox.h")
@:unreflective
@:native("wxStaticBox")
@:structAccess
extern class StaticBox extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticBox")         private static function _new():RawPointer<StaticBox>;
                                        public static inline function createInstance():Pointer<StaticBox> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, title:WxString):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////

}
