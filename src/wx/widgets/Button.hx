package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/button.h")
@:unreflective
@:native("wxButton*")
extern class Button extends ButtonImpl {
    @:native("new wxButton")    public static function createInstance():Button;
}

@:include("wx/button.h")
@:unreflective
@:native("wxButton")
extern class ButtonImpl extends Window {
    @:native("Create")          public function create(parent:Window, id:Int, title:ConstCharStar):Bool;
    @:native("SetBitmap")       public function setBitmap(bitmap:Bitmap):Void;
}
