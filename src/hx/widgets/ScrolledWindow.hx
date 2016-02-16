package hx.widgets;

import wx.widgets.ScrolledWindow in WxScrolledWindow;

class ScrolledWindow extends Window {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var scrolledWindowRef:WxScrolledWindow = WxScrolledWindow.createInstance();
        scrolledWindowRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = scrolledWindowRef;
    }
    
    public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int) {
        scrolledWindowRef.setScrollbars(pixelsPerUnitX, pixelsPerUnitY, noUnitsX, noUnitsY);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrolledWindowRef(get, null):WxScrolledWindow;
    private inline function get_scrolledWindowRef():WxScrolledWindow {
        return cast _ref;
    }
}
