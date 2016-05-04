package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/frame.h")
@:unreflective
@:native("wxFrame")
extern class Frame extends TopLevelWindow {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFrame") private static function _new():RawPointer<Window>;
    inline public static function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    @:native("Create")              @:overload(function(parent:RawPointer<Window>, id:Int, title:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetMenuBar")          public function getMenuBar():Pointer<MenuBar>;
    @:native("SetMenuBar")          public function setMenuBar(menuBar:Pointer<MenuBar>):Void;
}
