package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/calctrl.h")
@:unreflective
@:native("wxCalendarCtrl")
@:structAccess
extern class CalendarCtrl extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxCalendarCtrl")      private static function _new():RawPointer<CalendarCtrl>;
                                        public static inline function createInstance():Pointer<CalendarCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }
                                    
    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, date:Reference<WxDateTime>, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("GetDate")                 public function getDate():WxDateTime;
    @:native("SetDate")                 public function setDate(date:Reference<WxDateTime>):Void;
}