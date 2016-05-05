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

    public var pageSize(get, never):Int;
    private function get_pageSize():Int {
        return scrollBarRef.ptr.getPageSize();
    }
    //TODO can't find in doc
    /*private function set_pageSize(value:Int):Int {
        scrollBarRef.ptr.setPageSize(value);
        return value;
    }*/

    public var range(get, never):Int;
    private function get_range():Int {
        return scrollBarRef.ptr.getRange();
    }
    //TODO can't find in doc
    /*private function set_range(value:Int):Int {
        scrollBarRef.ptr.setRange(value);
        return value;
    }*/

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
