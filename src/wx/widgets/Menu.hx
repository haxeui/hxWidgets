package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/menu.h")
@:unreflective
@:native("cpp::Reference<wxMenu>")
extern class Menu extends MenuImpl {
    @:native("new wxMenu")    public static function createInstance(title:ConstCharStar, style:Int = 0):Menu;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenu")
extern class MenuImpl extends Window {
    @:native("Append")    public function append(menuItem:MenuItem):MenuItem;
}
