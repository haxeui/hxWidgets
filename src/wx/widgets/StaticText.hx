package wx.widgets;

import cpp.CastCharStar;
import cpp.ConstCharStar;
import cpp.NativeString;
import wx.widgets.StaticText.WxStringImpl;

@:include("wx/stattext.h")
@:unreflective
@:native("cpp::Reference<wxStaticText>")
extern class StaticText extends StaticTextImpl {
    @:native("new wxStaticText")    public static function createInstance():StaticText;
}

/*
@:include("wx/string.h")
@:unreflective
@:native("cpp::Reference<wxString>")
extern class WxString extends WxStringImpl {
  
}

@:include("wx/string.h")
@:unreflective
@:native("wxString")
@:structAccess
extern class WxStringImpl {
    @:native("Length")            public function length():Int;
    @:native("c_str")            public function c_str():ConstCharStar;
}
*/

@:include("wx/stattext.h")
@:unreflective
@:native("wxStaticText")
extern class StaticTextImpl extends Control {
    @:native("Create")          @:overload(function(parent:Window, id:Int, value:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")          public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    @:native("GetLabel")                public function test():WxStringImpl;

    @:native("Wrap")            public function wrap(width:Int):Void;
    
}
