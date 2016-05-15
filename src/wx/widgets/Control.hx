package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/control.h")
@:unreflective
@:native("wxControl")
extern class Control extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxControl")           private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetLabel")                public function setLabel(label:WxString):Void;
    @:native("GetLabel")                public function getLabel():WxString;

}
