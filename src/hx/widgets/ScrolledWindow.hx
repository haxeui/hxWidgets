package hx.widgets;

import wx.widgets.ScrolledWindow in WxScrolledWindow;
import cpp.Pointer;

class ScrolledWindow extends Window {

    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxScrolledWindow.createInstance().reinterpret();
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

    public function setScrollRate(xstep:Int, ystep:Int) {
        scrolledWindowRef.ptr.setScrollRate(xstep, ystep);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrolledWindowRef(get, null):Pointer<WxScrolledWindow>;
    private function get_scrolledWindowRef():Pointer<WxScrolledWindow> {
        return _ref.reinterpret();
    }

}
