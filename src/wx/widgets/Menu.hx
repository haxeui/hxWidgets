package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/menu.h")
@:unreflective
@:native("wxMenu")
extern class Menu extends EvtHandler {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMenu")              private static function _new(text:ConstCharStar, style:Int = 0):RawPointer<Menu>;
                                        public static inline function createInstance(text:ConstCharStar, style:Int = 0):Pointer<Menu> return Pointer.fromRaw(_new(text, style));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Append")                  public function append(menuItem:RawPointer<MenuItem>):RawPointer<MenuItem>;
    @:native("AppendCheckItem")         public function appendCheckItem(id:Int, text:ConstCharStar):RawPointer<MenuItem>;
    @:native("AppendRadioItem")         public function appendRadioItem(id:Int, text:ConstCharStar):RawPointer<MenuItem>;
    @:native("AppendSeparator")         public function appendSeparator():RawPointer<MenuItem>;
    @:native("AppendSubMenu")           public function appendSubMenu(menu:RawPointer<Menu>, text:ConstCharStar):RawPointer<MenuItem>;
}

/*
@:include("wx/menu.h")
@:unreflective
@:native("cpp::Reference<wxMenu>")
extern class Menu extends MenuImpl {
    @:native("new wxMenu")    public static function createInstance(text:ConstCharStar, style:Int = 0):Menu;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenu")
extern class MenuImpl extends Window {
    @:native("Append")              public function append(menuItem:MenuItem):MenuItem;
    @:native("AppendCheckItem")     public function appendCheckItem(id:Int, text:ConstCharStar):MenuItem;
    @:native("AppendRadioItem")     public function appendRadioItem(id:Int, text:ConstCharStar):MenuItem;
    @:native("AppendSeparator")     public function appendSeparator():MenuItem;
    @:native("AppendSubMenu")       public function appendSubMenu(menu:Menu, text:ConstCharStar):MenuItem;
}
*/