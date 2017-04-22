package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/slider.h")
@:unreflective
@:native("wxSlider")
@:structAccess
extern class Slider extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSlider")            private static function _new():RawPointer<Slider>;
                                        public static inline function createInstance():Pointer<Slider> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, value:Int, minValue:Int, maxValue:Int, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetValue")                public function getValue():Int;
    @:native("SetValue")                public function setValue(value:Int):Void;
    @:native("GetMin")                  public function getMin():Int;
    @:native("SetMin")                  public function setMin(value:Int):Void;
    @:native("GetMax")                  public function getMax():Int;
    @:native("SetMax")                  public function setMax(value:Int):Void;
    @:native("SetSelection")            public function setSelection(startPos:Int, endPos:Int):Void;
    @:native("GetSelStart")             public function getSelStart():Int;
    @:native("GetSelEnd")               public function getSelEnd():Int;

}
