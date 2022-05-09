package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/textctrl.h")
@:unreflective
@:native("wxTextCtrl")
@:structAccess
extern class TextCtrl extends Control implements TextEntry {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTextCtrl")          private static function _new():RawPointer<TextCtrl>;
                                        public static inline function createInstance():Pointer<TextCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, value:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("AppendText")          public function appendText(value:WxString):Void;
    @:native("GetInsertionPoint")   public function getInsertionPoint():Int;
    @:native("SetInsertionPoint")   public function setInsertionPoint(value:Int):Void;
    @:native("SetValue")            public function setValue(value:WxString):Void;
    @:native("GetValue")            public function getValue():WxString;

    @:native("SetHint")             public function setHint(value:WxString):Void;
    @:native("GetHint")             public function getHint():WxString;
}
