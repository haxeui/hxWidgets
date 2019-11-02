package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/sizer.h")
@:unreflective
@:native("wxStaticBoxSizer")
@:structAccess
extern class StaticBoxSizer extends BoxSizer {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticBoxSizer")    private static function _new(orient:Orientation, window:RawPointer<Window>, title:WxString):RawPointer<StaticBoxSizer>;
                                        public static inline function createInstance(orient:Orientation, window:RawPointer<Window>, title:WxString):Pointer<StaticBoxSizer> {
                                            return Pointer.fromRaw(_new(orient, window, title));
                                        }

    @:native("GetStaticBox")            public function getStaticBox():RawPointer<StaticBox>;
}
