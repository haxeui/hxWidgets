package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/event.h")
@:unreflective
@:native("wxEvtHandler")
extern class EvtHandler {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxEvtHandler")        private static function _new():RawPointer<EvtHandler>;
                                        public static inline function createInstance():Pointer<EvtHandler> return Pointer.fromRaw(_new());
}
