package hx.widgets;

import wx.widgets.ScrolledWindow in WxScrolledWindow;
import cpp.Pointer;
import cpp.RawPointer;

class ScrolledWindow extends Window {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxScrolledWindow.createInstance();
            scrolledWindowRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int, xPos:Int = 0, yPos:Int = 0, noRefresh:Bool = false) {
        scrolledWindowRef.ptr.setScrollbars(pixelsPerUnitX, pixelsPerUnitY, noUnitsX, noUnitsY, xPos, yPos, noRefresh);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrolledWindowRef(get, null):Pointer<WxScrolledWindow>;
    private inline function get_scrolledWindowRef():Pointer<WxScrolledWindow> {
        return Pointer.fromRaw(untyped __cpp__("(wxScrolledWindow*)(_ref->get_raw())"));
    }
}
