package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/radiobut.h")
@:unreflective
@:native("wxRadioButton*")
extern class RadioButton extends RadioButtonImpl {
    @:native("new wxRadioButton")   public static function createInstance():RadioButton;
}

@:include("wx/radiobut.h")
@:unreflective
@:native("wxRadioButton")
extern class RadioButtonImpl extends Window {
    @:native("Create")              public function create(parent:Window, id:Int, title:ConstCharStar, point:Point, size:Size, style:Int):Bool;
    @:native("SetValue")            public function setValue(value:Bool):Void;
    @:native("GetValue")            public function getValue():Bool;
}
