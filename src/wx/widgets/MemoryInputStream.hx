package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/mstream.h")
@:unreflective
@:native("wxMemoryInputStream")
extern class MemoryInputStream {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMemoryInputStream")     private static function _new(data:ConstCharStar, len:Int):RawPointer<MemoryInputStream>;
                                            public static inline function createInstance(data:ConstCharStar, len:Int):Pointer<MemoryInputStream> return Pointer.fromRaw(_new(data, len));
}

/*
import cpp.ConstCharStar;

@:include("wx/mstream.h")
@:unreflective
@:native("cpp::Reference<wxMemoryInputStream>")
extern class MemoryInputStream extends MemoryInputStreamImpl {
    @:native("new wxMemoryInputStream")     public static function createInstance(data:ConstCharStar, len:Int):MemoryInputStream;
}

@:include("wx/mstream.h")
@:unreflective
@:native("wxMemoryInputStream")
extern class MemoryInputStreamImpl {
}
*/