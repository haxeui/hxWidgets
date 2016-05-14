package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/statbmp.h")
@:unreflective
@:native("wxStaticBitmap")
extern class StaticBitmap extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticBitmap")          private static function _new():RawPointer<Window>;
                                            public static inline function createInstance():Pointer<Window> {
                                                return Pointer.fromRaw(_new());
                                            }

    @:native("Create")                      @:overload(function(parent:RawPointer<Window>, id:Int, bitmap:Bitmap):Bool {})
    @:native("Create")                      override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetBitmap")                   public function getBitmap():Bitmap;
    @:native("SetBitmap")                   public function setBitmap(bitmap:Bitmap):Void;

}
