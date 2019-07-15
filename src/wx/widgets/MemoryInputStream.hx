package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/mstream.h")
@:unreflective
@:native("wxMemoryInputStream")
@:structAccess
extern class MemoryInputStream extends InputStream {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMemoryInputStream")     private static function _new(data:Pointer<cpp.UInt8>, len:Int):RawPointer<MemoryInputStream>; //TODO: data should be void*
                                            public static inline function createInstance(data:Pointer<cpp.UInt8>, len:Int):Pointer<MemoryInputStream> {
                                                return Pointer.fromRaw(_new(data, len));
                                            }
}
