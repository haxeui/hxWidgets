package hx.widgets;

import cpp.Pointer;
import wx.widgets.ScrollBar in WxScrollBar;

class ScrollBar extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxScrollBar.createInstance();
            scrollBarRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function setScrollbar(position:Int, thumbSize:Int, range:Int, pageSize:Int) {
        scrollBarRef.ptr.setScrollbar(position, thumbSize, range, pageSize);
    }
    
    public var pageSize(get, set):Int;
    private function get_pageSize():Int {
        return scrollBarRef.ptr.getPageSize();
    }
    private function set_pageSize(value:Int):Int {
        scrollBarRef.ptr.setPageSize(value);
        return value;
    }
    
    public var range(get, set):Int;
    private function get_range():Int {
        return scrollBarRef.ptr.getRange();
    }
    private function set_range(value:Int):Int {
        scrollBarRef.ptr.setRange(value);
        return value;
    }
    
    public var thumbPosition(get, set):Int;
    private function get_thumbPosition():Int {
        return scrollBarRef.ptr.getThumbPosition();
    }
    private function set_thumbPosition(value:Int):Int {
        scrollBarRef.ptr.setThumbPosition(value);
        return value;
    }
    
    public var thumbSize(get, null):Int;
    private function get_thumbSize():Int {
        return scrollBarRef.ptr.getThumbSize();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrollBarRef(get, null):Pointer<WxScrollBar>;
    private function get_scrollBarRef():Pointer<WxScrollBar> {
        return Pointer.fromRaw(untyped __cpp__("(wxScrollBar*)(_ref->get_raw())"));
    }
}
/*
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
*/