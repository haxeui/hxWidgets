package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/checkbox.h")
@:unreflective
@:native("wxCheckBox")
@:structAccess
extern class CheckBox extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxCheckBox")          private static function _new():RawPointer<CheckBox>;
                                        public static inline function createInstance():Pointer<CheckBox> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, label:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetValue")                public function setValue(value:Bool):Void;
    @:native("GetValue")                public function getValue():Bool;

}
