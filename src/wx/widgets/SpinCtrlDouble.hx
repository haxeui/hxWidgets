package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/spinctrl.h")
@:unreflective
@:native("wxSpinCtrlDouble")
@:structAccess
extern class SpinCtrlDouble extends Control {
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSpinCtrlDouble")              private static function _new():RawPointer<SpinCtrlDouble>;
                                            public static inline function createInstance():Pointer<SpinCtrlDouble> {
                                                return Pointer.fromRaw(_new());
                                            }
                                            
    @:native("Create")                      @:overload(function(parent:RawPointer<Window>, id:Int, value:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                      override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("GetValue")                    public function getValue():Float;
    @:native("SetValue")                    public function setValue(value:Float):Void;
    @:native("GetMin")                      public function getMin():Float;
    @:native("GetMax")                      public function getMax():Float;
    @:native("SetRange")                    public function setRange(value:Float, value:Float):Void;
    @:native("GetDigits")                   public function getDigits():Int;
    @:native("SetDigits")                   public function setDigits(value:Int):Void;
    @:native("GetIncrement")                public function getIncrement():Float;
    @:native("SetIncrement")                public function setIncrement(value:Float):Void;
}
