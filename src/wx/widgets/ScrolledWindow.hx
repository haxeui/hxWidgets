package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/scrolwin.h")
@:unreflective
@:native("wxScrolledWindow")
extern class ScrolledWindow extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxScrolledWindow")        private static function _new():RawPointer<Window>;
                                            public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetScrollbars")               public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int, xPos:Int = 0, yPos:Int = 0, noRefresh:Bool = false):Void;
}

/*
@:include("wx/scrolwin.h")
@:unreflective
@:native("cpp::Reference<wxScrolledWindow>")
extern class ScrolledWindow extends ScrolledWindowImpl {
    @:native("new wxScrolledWindow")    public static function createInstance():ScrolledWindow;
}

@:include("wx/scrolwin.h")
@:unreflective
@:native("wxScrolledWindow")
extern class ScrolledWindowImpl extends Window {
    @:native("SetScrollbars")           public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int, xPos:Int = 0, yPos:Int = 0, noRefresh:Bool = false):Void;
}

*/