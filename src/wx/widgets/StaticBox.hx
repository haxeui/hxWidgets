package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/statbox.h")
@:unreflective
@:native("wxStaticBox")
extern class StaticBox extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticBox")         private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, title:ConstCharStar):Bool {})
    @:native("Create")                  public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
}

/*
import cpp.ConstCharStar;

@:include("wx/statbox.h")
@:unreflective
@:native("cpp::Reference<wxStaticBox>")
extern class StaticBox extends StaticBoxImpl {
    @:native("new wxStaticBox")     public static function createInstance():StaticBox;
}

@:include("wx/statbox.h")
@:unreflective
@:native("wxStaticBox")
extern class StaticBoxImpl extends Control {
    @:native("Create")          @:overload(function(parent:Window, id:Int, title:ConstCharStar):Bool {})
    @:native("Create")          public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
}
*/