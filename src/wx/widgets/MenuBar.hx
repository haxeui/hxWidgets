package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuBar*")
extern class MenuBar extends MenuBarImpl {
    @:native("new wxMenuBar")       public static function createInstance(style:Int = 0):MenuBar;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuBar")
extern class MenuBarImpl extends Window {
    @:native("Append")              public function append(menu:Menu, title:ConstCharStar):Void;
}
