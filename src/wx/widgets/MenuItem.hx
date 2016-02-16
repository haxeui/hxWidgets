package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/menu.h")
@:unreflective
@:native("cpp::Reference<wxMenuItem>")
extern class MenuItem extends MenuItemImpl {
    @:native("new wxMenuItem")      public static function createInstance(parent:Menu, id:Int = 0, text:ConstCharStar, helpString:ConstCharStar, kind:Int):MenuItem;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuItem")
extern class MenuItemImpl {
    @:native("Check")               public function check(check:Bool = true):Void;
    @:native("SetBitmap")           public function setBitmap(bitmap:Bitmap):Void;
}
