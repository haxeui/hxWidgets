package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/sizer.h")
@:unreflective
@:native("wxGridSizer")
extern class GridSizer extends Sizer {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxGridSizer")         private static function _new(cols:Int, vgap:Int, hgap:Int):RawPointer<GridSizer>;
                                        public static inline function createInstance(cols:Int, vgap:Int, hgap:Int):Pointer<GridSizer> {
                                            return Pointer.fromRaw(_new(cols, vgap, hgap));
                                        }

}