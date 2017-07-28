package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/event.h")
@:unreflective
@:native("wxThreadEvent")
@:structAccess
extern class ThreadEvent extends Event {
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxThreadEvent")       private static function _new(eventType:Int, id:Int):RawPointer<ThreadEvent>;
                                        public static inline function createInstance(eventType:Int, id:Int):Pointer<ThreadEvent> {
                                            return Pointer.fromRaw(_new(eventType, id));
                                        }
}