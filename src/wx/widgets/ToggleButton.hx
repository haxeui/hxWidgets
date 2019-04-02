package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/tglbtn.h")
@:unreflective
@:native("wxToggleButton")
@:structAccess
extern class ToggleButton extends AnyButton {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxToggleButton")      private static function _new():RawPointer<ToggleButton>;
                                        public static inline function createInstance():Pointer<ToggleButton> {
                                            return Pointer.fromRaw(_new());
                                        }
                                        
    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, label:WxString):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
   
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetValue")                public function setValue(value:Bool):Void;
    @:native("GetValue")                public function getValue():Bool;
}