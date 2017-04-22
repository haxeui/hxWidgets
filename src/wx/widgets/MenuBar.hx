package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuBar")
@:structAccess
extern class MenuBar extends Window {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMenuBar")           private static function _new(style:Int = 0):RawPointer<MenuBar>;
                                        public static inline function createInstance(style:Int = 0):Pointer<MenuBar> {
                                            return Pointer.fromRaw(_new(style));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Append")                  public function append(menu:RawPointer<Menu>, title:WxString):Bool;

}
