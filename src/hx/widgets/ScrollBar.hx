package hx.widgets;

import wx.widgets.ScrollBar in WxScrollBar;

class ScrollBar extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var scrollBarRef:WxScrollBar = WxScrollBar.createInstance();
            scrollBarRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = scrollBarRef;
        }
        
        super(parent, id);
    }
    
    public function setScrollbar(position:Int, thumbSize:Int, range:Int, pageSize:Int) {
        scrollBarRef.setScrollbar(position, thumbSize, range, pageSize);
    }

    public function getPageSize():Int {
        return scrollBarRef.getPageSize();
    }
    
    public function getRange():Int {
        return scrollBarRef.getRange();
    }
    
    public function getThumbPosition():Int {
        return scrollBarRef.getThumbPosition();
    }
    
    public function getThumbSize():Int {
        return scrollBarRef.getThumbSize();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrollBarRef(get, null):WxScrollBar;
    private function get_scrollBarRef():WxScrollBar {
        return cast _ref;
    }
}