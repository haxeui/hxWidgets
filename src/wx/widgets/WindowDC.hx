package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dcclient.h")
@:unreflective
@:native("wxWindowDC")
extern class WindowDC extends DC {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxWindowDC")          private static function _new(window:RawPointer<Window>):RawPointer<DC>;
                                        public static inline function createInstance(window:RawPointer<Window>):Pointer<DC> return Pointer.fromRaw(_new(window));
}

/*
@:include("wx/dcclient.h")
@:unreflective
@:native("cpp::Reference<wxWindowDC>")
extern class WindowDC extends WindowDCImpl {
    @:native("new wxWindowDC")          public static function createInstance(window:Window):WindowDC;
}

@:include("wx/dcclient.h")
@:unreflective
@:native("wxWindowDC")
extern class WindowDCImpl extends DC {
}
*/