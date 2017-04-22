package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/scrolwin.h")
@:unreflective
@:native("wxScrolledWindow") //TODO: in 3.0 this is wxScrolled<wxPanel> and extends wxPanel
@:structAccess
extern class ScrolledWindow extends Window {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxScrolledWindow")        private static function _new():RawPointer<ScrolledWindow>;
                                            public static inline function createInstance():Pointer<ScrolledWindow> {
                                                return Pointer.fromRaw(_new());
                                            }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetScrollbars")               public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int, xPos:Int = 0, yPos:Int = 0, noRefresh:Bool = false):Void;

}
