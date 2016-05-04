package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dcclient.h")
@:unreflective
@:native("wxGCDC")
extern class GCDC extends DC {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxGCDC")          private static function _new(windowDC:WindowDC):RawPointer<DC>;
                                    public static inline function createInstance(windowDC:WindowDC):Pointer<DC> return Pointer.fromRaw(_new(windowDC));
}

/*
@:include("wx/dcgraph.h")
@:unreflective
@:native("cpp::Reference<wxGCDC>")
extern class GCDC extends GCDCImpl {
    @:native("new wxGCDC")          public static function createInstance(windowDC:WindowDC):GCDC;
}

@:include("wx/dcgraph.h")
@:unreflective
@:native("wxGCDC")
extern class GCDCImpl extends DC {
}
*/