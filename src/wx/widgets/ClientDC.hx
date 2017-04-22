package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dcclient.h")
@:unreflective
@:native("wxClientDC")
@:structAccess
extern class ClientDC extends WindowDC {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxClientDC")          private static function _new(window:RawPointer<Window>):RawPointer<ClientDC>;
                                        public static inline function createInstance(window:RawPointer<Window>):Pointer<ClientDC> {
                                            return Pointer.fromRaw(_new(window));
                                        }

}
