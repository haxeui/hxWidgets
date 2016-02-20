package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/stattext.h")
@:unreflective
@:native("cpp::Reference<wxStaticText>")
extern class StaticText extends StaticTextImpl {
    @:native("new wxStaticText")    public static function createInstance():StaticText;
}

@:include("wx/stattext.h")
@:unreflective
@:native("wxStaticText")
extern class StaticTextImpl extends Control {
    @:native("Create")          @:overload(function(parent:Window, id:Int, value:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")          public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
}
