package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/control.h")
@:unreflective
@:native("wxControl")
@:structAccess
extern class Control extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxControl")           private static function _new():RawPointer<Control>;
                                        public static inline function createInstance():Pointer<Control> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetLabel")                public function setLabel(label:WxString):Void;
    @:native("GetLabel")                public function getLabel():WxString;
    @:native("SetLabelMarkup")          public function setLabelMarkup(markup:WxString):Bool;
}
