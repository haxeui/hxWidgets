package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/stattext.h")
@:unreflective
@:native("wxStaticText*")
extern class StaticText extends StaticTextImpl {
    @:native("new wxStaticText")    public static function createInstance():StaticText;
}

@:include("wx/stattext.h")
@:unreflective
@:native("wxStaticText")
extern class StaticTextImpl extends Window {
    @:native("Create")              public function create(parent:Window, id:Int, value:ConstCharStar, point:Point, size:Size, style:Int):Bool;
}
