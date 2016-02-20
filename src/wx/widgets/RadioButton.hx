package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/radiobut.h")
@:unreflective
@:native("cpp::Reference<wxRadioButton>")
extern class RadioButton extends RadioButtonImpl {
    @:native("new wxRadioButton")   public static function createInstance():RadioButton;
}

@:include("wx/radiobut.h")
@:unreflective
@:native("wxRadioButton")
extern class RadioButtonImpl extends Control {
    @:native("Create")              @:overload(function(parent:Window, id:Int, label:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("SetValue")            public function setValue(value:Bool):Void;
    @:native("GetValue")            public function getValue():Bool;
}
