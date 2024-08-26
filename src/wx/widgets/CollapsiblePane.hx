package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/collpane.h")
@:unreflective
@:native("wxCollapsiblePane")
@:structAccess
extern class CollapsiblePane extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxCollapsiblePane")       private static function _new():RawPointer<CollapsiblePane>;
                                            public static inline function createInstance():Pointer<CollapsiblePane> {
                                                return Pointer.fromRaw(_new());
                                            }

    @:native("Create")                      @:overload(function(parent:RawPointer<Window>, id:Int, label:WxString):Bool {})
    @:native("Create")                      @:overload(function(parent:RawPointer<Window>, id:Int, label:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                      override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetPane")                     public function getPane():RawPointer<Window>;
}