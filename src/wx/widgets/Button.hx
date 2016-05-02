package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/button.h")
@:unreflective
@:native("wxButton")
extern class Button extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxButton")            private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, label:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetBitmap")               public function getBitmap():Bitmap;
    @:native("SetBitmap")               public function setBitmap(bitmap:Bitmap):Void;
    @:native("SetBitmapPosition")       public function setBitmapPosition(dir:Direction):Void;
}

/*
import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;





@:include("wx/button.h")
@:unreflective
@:native("cpp::Reference<wxButton>")
extern class Button extends ButtonImpl {
    @:native("new wxButton")    public static function createInstance():Button;
}

@:include("wx/button.h")
@:unreflective
@:native("wxButton")
extern class ButtonImpl extends Control {
    @:native("Create")                  @:overload(function(parent:Window, id:Int, label:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("SetBitmap")               public function setBitmap(bitmap:Bitmap):Void;
    @:native("SetBitmapPosition")       public function setBitmapPosition(dir:Direction):Void;
}
*/