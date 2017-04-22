package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dcclient.h")
@:unreflective
@:native("wxPaintDC")
@:structAccess
extern class PaintDC extends ClientDC {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPaintDC")           private static function _new(window:RawPointer<Window>):RawPointer<PaintDC>;
                                        public static inline function createInstance(window:RawPointer<Window>):Pointer<PaintDC> {
                                            return Pointer.fromRaw(_new(window));
                                        }

}
