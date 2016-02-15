package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/checkbox.h")
@:unreflective
@:native("wxCheckBox*")
extern class CheckBox extends CheckBoxImpl {
    @:native("new wxCheckBox")      public static function createInstance():CheckBox;
}

@:include("wx/checkbox.h")
@:unreflective
@:native("wxCheckBox")
extern class CheckBoxImpl extends Window {
    @:native("Create")              public function create(parent:Window, id:Int, title:ConstCharStar):Bool;
    @:native("SetValue")            public function setValue(value:Bool):Void;
    @:native("GetValue")            public function getValue():Bool;
}
