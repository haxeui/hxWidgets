package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/sizer.h")
@:unreflective
@:native("wxBoxSizer")
@:structAccess
extern class BoxSizer extends Sizer {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBoxSizer")          private static function _new(orient:Orientation):RawPointer<BoxSizer>;
                                        public static inline function createInstance(orient:Orientation):Pointer<BoxSizer> {
                                            return Pointer.fromRaw(_new(orient));
                                        }

}
