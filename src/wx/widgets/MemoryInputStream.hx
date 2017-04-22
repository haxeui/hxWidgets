package wx.widgets;

import cpp.ConstCharStar;
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
    @:native("new wxMemoryInputStream")     private static function _new(data:ConstCharStar, len:Int):RawPointer<MemoryInputStream>; //TODO: data should be void*
                                            public static inline function createInstance(data:ConstCharStar, len:Int):Pointer<MemoryInputStream> {
                                                return Pointer.fromRaw(_new(data, len));
                                            }

}
