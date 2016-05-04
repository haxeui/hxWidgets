package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dialog.h")
@:unreflective
@:native("wxDialog")
extern class Dialog extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDialog")            private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, title:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("ShowModal")               public function showModal():Int;
}

/*
import cpp.ConstCharStar;

@:include("wx/dialog.h")
@:unreflective
@:native("cpp::Reference<wxDialog>")
extern class Dialog extends DialogImpl {
    @:native("new wxDialog")    public static function createInstance():Dialog;
}

@:include("wx/dialog.h")
@:native("wxDialog")
extern class DialogImpl extends Window {
    @:native("Create")                  @:overload(function(parent:Window, id:Int, title:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    @:native("ShowModal")               public function showModal():Int;
}
*/