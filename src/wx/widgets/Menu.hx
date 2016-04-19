package wx.widgets;

import cpp.ConstCharStar;

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
