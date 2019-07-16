package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dcgraph.h")
@:unreflective
@:native("wxGCDC")
@:structAccess
extern class GCDC extends DC {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxGCDC")          private static function _new(gc:RawPointer<GraphicsContext>):RawPointer<GCDC>;
                                    public static inline function createInstance(gc:RawPointer<GraphicsContext>):Pointer<GCDC> {
                                        return Pointer.fromRaw(_new(gc));
                                    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetGraphicsContext")  public function getGraphicsContext():RawPointer<GraphicsContext>;
}
