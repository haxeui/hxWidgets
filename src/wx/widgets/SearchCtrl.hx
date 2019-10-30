package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/srchctrl.h")
@:unreflective
@:native("wxSearchCtrl")
@:structAccess
extern class SearchCtrl extends TextCtrl{
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSearchCtrl")        private static function _new():RawPointer<SearchCtrl>;
                                        public static inline function createInstance():Pointer<SearchCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, value:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
}