package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/icon.h")
@:unreflective
@:native("wxIcon")
@:structAccess
extern class Icon extends GDIObject {
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxIcon")      private static function _new():RawPointer<Icon>;
                                public static inline function createInstance():Pointer<Icon> {
                                    return Pointer.fromRaw(_new());
                                }
                                
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("CopyFromBitmap")  public function copyFromBitmap(bmp:Reference<Bitmap>):Void;
}