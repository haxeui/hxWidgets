package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/gauge.h")
@:unreflective
@:native("wxGauge")
extern class Gauge extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxGauge")             private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, range:Int, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetValue")                public function setValue(value:Int):Void;
    @:native("GetValue")                public function getValue():Int;
    @:native("Pulse")                   public function pulse():Void;

}
