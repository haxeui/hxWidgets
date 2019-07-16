package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("custom/wxownerdrawnpanel.h")
@:unreflective
@:native("wxOwnerDrawnPanel")
@:structAccess
extern class OwnerDrawnPanel extends Panel {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxOwnerDrawnPanel")       private static function _new(win:RawPointer<Window>):RawPointer<OwnerDrawnPanel>;
                                            public static inline function createInstance(win:RawPointer<Window>):Pointer<OwnerDrawnPanel> {
                                                return Pointer.fromRaw(_new(win));
                                            }
    public var onPaint:Dynamic;
    public var pGCDC:RawPointer<GCDC>;
}