package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/spinctrl.h")
@:unreflective
@:native("wxSpinCtrl")
@:structAccess
extern class SpinCtrl extends Control {
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSpinCtrl")              private static function _new():RawPointer<SpinCtrl>;
                                            public static inline function createInstance():Pointer<SpinCtrl> {
                                                return Pointer.fromRaw(_new());
                                            }
                                            
    @:native("Create")                      @:overload(function(parent:RawPointer<Window>, id:Int, value:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                      override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("GetValue")                    public function getValue():Int;
    @:native("SetValue")                    public function setValue(value:Int):Void;
    @:native("GetMin")                      public function getMin():Int;
    @:native("GetMax")                      public function getMax():Int;
    @:native("SetRange")                    public function setRange(value:Int, value:Int):Void;
}
