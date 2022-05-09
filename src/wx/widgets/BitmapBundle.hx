package wx.widgets;

#if ((wxMAJOR_VERSION >= 3) && (wxMINOR_VERSION >= 1) && (wxRELEASE_NUMBER >= 6))

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

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

    @:native("new wxBitmapBundle")      private static function _newFromBitmap(bitmap:Reference<Bitmap>):RawPointer<BitmapBundle>;
                                        public static inline function createInstanceFromBitmap(bitmap:Reference<Bitmap>):Pointer<BitmapBundle> {
                                            return Pointer.fromRaw(_newFromBitmap(bitmap));
                                        }
}

#end