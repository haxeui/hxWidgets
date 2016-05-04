package wx.widgets;

import cpp.ConstCharStar;
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
                                            public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    @:native("Create")                      @:overload(function(parent:RawPointer<Window>, id:Int, bitmap:Bitmap):Bool {})
    @:native("Create")                      public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetBitmap")                   public function getBitmap():Bitmap;
    @:native("SetBitmap")                   public function setBitmap(bitmap:Bitmap):Void;
}

/*
@:include("wx/statbmp.h")
@:unreflective
@:native("cpp::Reference<wxStaticBitmap>")
extern class StaticBitmap extends StaticBitmapImpl {
    @:native("new wxStaticBitmap")      public static function createInstance():StaticBitmap;
}

@:include("wx/statbmp.h")
@:unreflective
@:native("wxStaticBitmap")
extern class StaticBitmapImpl extends Control {
    @:native("Create")                  @:overload(function(parent:Window, id:Int, bitmap:Bitmap):Bool {})
    @:native("Create")                  public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;

    @:native("SetBitmap")               public function setBitmap(bitmap:Bitmap):Void;
}
*/