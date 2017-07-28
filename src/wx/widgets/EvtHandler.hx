package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/event.h")
@:unreflective
@:native("wxEvtHandler")
@:structAccess
extern class EvtHandler extends Object implements Trackable {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxEvtHandler")        private static function _new():RawPointer<EvtHandler>;
                                        public static inline function createInstance():Pointer<EvtHandler> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Event queuing and processing functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("QueueEvent")              public function queueEvent(sizer:RawPointer<Event>):Void;
}
