package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Void;

@:include("wx/scrolbar.h")
@:unreflective
@:native("wxScrollBar")
extern class ScrollBar extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxScrollBar")         private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetScrollbar")            public function setScrollbar(position:Int, thumbSize:Int, range:Int, pageSize:Int):Void;
    @:native("GetPageSize")             public function getPageSize():Int;
    @:native("GetRange")                public function getRange():Int;
    @:native("GetThumbPosition")        public function getThumbPosition():Int;
    @:native("SetThumbPosition")        public function setThumbPosition(value:Int):Void;
    @:native("GetThumbSize")            public function getThumbSize():Int;
}
