package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/sizer.h")
@:unreflective
@:native("wxStaticBoxSizer")
extern class StaticBoxSizer extends BoxSizer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticBoxSizer")    private static function _new(orient:Int, window:RawPointer<Window>, title:WxString):RawPointer<Sizer>;
                                        public static inline function createInstance(orient:Int, window:RawPointer<Window>, title:WxString):Pointer<Sizer> return Pointer.fromRaw(_new(orient, window, title));
}