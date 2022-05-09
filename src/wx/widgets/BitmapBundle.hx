package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/bmpbndl.h")
@:unreflective
@:native("wxBitmapBundle")
@:structAccess
extern class BitmapBundle {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBitmapBundle")      private static function _new():RawPointer<BitmapBundle>;
                                        public static inline function createInstance():Pointer<BitmapBundle> {
                                            return Pointer.fromRaw(_new());
                                        }
}