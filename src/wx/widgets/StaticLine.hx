package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/statline.h")
@:unreflective
@:native("wxStaticLine")
@:structAccess
extern class StaticLine extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticLine")        private static function _new():RawPointer<StaticLine>;
                                        public static inline function createInstance():Pointer<StaticLine> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, title:WxString, point:Point, size:Size):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size):Bool;
}