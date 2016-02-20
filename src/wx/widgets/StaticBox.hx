package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/statbox.h")
@:unreflective
@:native("cpp::Reference<wxStaticBox>")
extern class StaticBox extends StaticBoxImpl {
    @:native("new wxStaticBox")     public static function createInstance():StaticBox;
}

@:include("wx/statbox.h")
@:unreflective
@:native("wxStaticBox")
extern class StaticBoxImpl extends Control {
    @:native("Create")          @:overload(function(parent:Window, id:Int, title:ConstCharStar):Bool {})
    @:native("Create")          public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
}
