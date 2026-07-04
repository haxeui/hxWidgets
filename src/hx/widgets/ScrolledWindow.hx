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

    public function showScrollbars(horz:ScrollbarVisibility, vert:ScrollbarVisibility) {
        scrolledWindowRef.ptr.showScrollbars(horz, vert);
    }

    public function enableScrolling(xScrolling:Bool, yScrolling:Bool) {
        scrolledWindowRef.ptr.enableScrolling(xScrolling, yScrolling);
    }

    public function scroll(x:Int, y:Int) {
        scrolledWindowRef.ptr.scroll(x, y);
    }

    public var viewStart(get, never):Point;
    private function get_viewStart():Point {
        var pt = scrolledWindowRef.ptr.getViewStart();
        return new Point(pt.x, pt.y);
    }

    public var scrollPixelsPerUnit(get, never):Point;
    private function get_scrollPixelsPerUnit():Point {
        var x:Int = 0;
        var y:Int = 0;
        var xPtr = Pointer.addressOf(x).raw;
        var yPtr = Pointer.addressOf(y).raw;
        scrolledWindowRef.ptr.getScrollPixelsPerUnit(xPtr, yPtr);
        return new Point(x, y);
    }

    public function calcScrolledPosition(point:Point):Point {
        var temp = point.createPointer();
        var converted = scrolledWindowRef.ptr.calcScrolledPosition(temp.ref);
        temp.destroy();
        return new Point(converted.x, converted.y);
    }

    public function calcUnscrolledPosition(point:Point):Point {
        var temp = point.createPointer();
        var converted = scrolledWindowRef.ptr.calcUnscrolledPosition(temp.ref);
        temp.destroy();
        return new Point(converted.x, converted.y);
    }

    public var targetWindow(get, set):Window;
    private function get_targetWindow():Window {
        var raw = scrolledWindowRef.ptr.getTargetWindow();
        if (raw == null) {
            return null;
        }
        var window = new Window();
        @:privateAccess window._ref = Pointer.fromRaw(raw).reinterpret();
        return window;
    }
    private function set_targetWindow(value:Window):Window {
        scrolledWindowRef.ptr.setTargetWindow(Window.toRaw(value));
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var scrolledWindowRef(get, null):Pointer<WxScrolledWindow>;
    private function get_scrolledWindowRef():Pointer<WxScrolledWindow> {
        return _ref.reinterpret();
    }

}
