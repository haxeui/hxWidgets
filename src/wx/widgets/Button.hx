package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/button.h")
@:unreflective
@:native("wxButton")
@:structAccess
extern class Button extends AnyButton {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxButton")            private static function _new():RawPointer<Button>;
                                        public static inline function createInstance():Pointer<Button> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int):Bool {})
    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, label:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
}
