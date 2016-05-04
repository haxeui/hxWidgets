package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/panel.h")
@:unreflective
@:native("wxPanel")
extern class Panel extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPanel")             private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());
}
