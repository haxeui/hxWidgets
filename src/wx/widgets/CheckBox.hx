package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/checkbox.h")
@:unreflective
@:native("wxCheckBox")
extern class CheckBox extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxCheckBox")          private static function _new():RawPointer<CheckBox>;
                                        public static inline function createInstance():Pointer<CheckBox> return Pointer.fromRaw(_new());

    @:native("Create")                  @:overload(function(parent:Pointer<Window>, id:Int, label:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  public override function create(parent:Pointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetValue")                public function setValue(value:Bool):Void;
    @:native("GetValue")                public function getValue():Bool;
}

/*
import cpp.ConstCharStar;

@:include("wx/checkbox.h")
@:unreflective
@:native("cpp::Reference<wxCheckBox>")
extern class CheckBox extends CheckBoxImpl {
    @:native("new wxCheckBox")      public static function createInstance():CheckBox;
}

@:include("wx/checkbox.h")
@:unreflective
@:native("wxCheckBox")
extern class CheckBoxImpl extends Control {
    @:native("Create")              @:overload(function(parent:Window, id:Int, label:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("SetValue")            public function setValue(value:Bool):Void;
    @:native("GetValue")            public function getValue():Bool;
}
*/