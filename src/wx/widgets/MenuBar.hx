package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuBar")
extern class MenuBar extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMenuBar")           private static function _new(style:Int = 0):RawPointer<Window>;
                                        public static inline function createInstance(style:Int = 0):Pointer<Window> return Pointer.fromRaw(_new(style));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Append")                  public function append(menu:RawPointer<Menu>, title:ConstCharStar):Void;
}

/*
import cpp.ConstCharStar;

@:include("wx/menu.h")
@:unreflective
@:native("cpp::Reference<wxMenuBar>")
extern class MenuBar extends MenuBarImpl {
    @:native("new wxMenuBar")       public static function createInstance(style:Int = 0):MenuBar;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuBar")
extern class MenuBarImpl extends Window {
    @:native("Append")              public function append(menu:Menu, title:ConstCharStar):Void;
}
*/