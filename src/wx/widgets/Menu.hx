package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/menu.h")
@:unreflective
@:native("wxMenu")
extern class Menu extends EvtHandler {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMenu")              private static function _new(text:WxString, style:Int = 0):RawPointer<Menu>;
                                        public static inline function createInstance(text:WxString, style:Int = 0):Pointer<Menu> {
                                            return Pointer.fromRaw(_new(text, style));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Append")                  public function append(menuItem:RawPointer<MenuItem>):RawPointer<MenuItem>;
    @:native("AppendCheckItem")         public function appendCheckItem(id:Int, text:WxString):RawPointer<MenuItem>;
    @:native("AppendRadioItem")         public function appendRadioItem(id:Int, text:WxString):RawPointer<MenuItem>;
    @:native("AppendSeparator")         public function appendSeparator():RawPointer<MenuItem>;
    @:native("AppendSubMenu")           public function appendSubMenu(menu:RawPointer<Menu>, text:WxString):RawPointer<MenuItem>;

}
