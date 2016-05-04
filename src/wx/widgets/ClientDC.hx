package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dcclient.h")
@:unreflective
@:native("wxClientDC")
extern class ClientDC extends WindowDC {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxClientDC")          private static function _new(window:RawPointer<Window>):RawPointer<DC>;
                                        public static inline function createInstance(window:RawPointer<Window>):Pointer<DC> return Pointer.fromRaw(_new(window));
}

/*
import cpp.ConstCharStar;

@:include("wx/dcclient.h")
@:unreflective
@:native("cpp::Reference<wxClientDC>")
extern class ClientDC extends ClientDCImpl {
    @:native("new wxClientDC")          public static function createInstance(window:Window):ClientDC;
}

@:include("wx/dcclient.h")
@:unreflective
@:native("wxClientDC")
extern class ClientDCImpl extends WindowDC {
}
*/