package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/frame.h")
@:unreflective
@:native("wxFrame")

extern class Frame extends TopLevelWindow {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFrame") private static function _new():RawPointer<Frame>;
                            public static inline function createInstance():Pointer<Frame> {
                                return Pointer.fromRaw(_new());
                            }

    @:native("Create")              @:overload(function(parent:RawPointer<Window>, id:Int, title:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetMenuBar")          public function getMenuBar():RawPointer<MenuBar>;
    @:native("SetMenuBar")          public function setMenuBar(menuBar:RawPointer<MenuBar>):Void;

}
