package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/panel.h")
@:unreflective
@:native("wxPanel")
@:structAccess
extern class Panel extends Window {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPanel")             private static function _new():RawPointer<Panel>;
                                        public static inline function createInstance():Pointer<Panel> {
                                            return Pointer.fromRaw(_new());
                                        }

}
