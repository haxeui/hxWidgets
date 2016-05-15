package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.FrameStyle;
import wx.widgets.Frame in WxFrame;
import wx.widgets.WxString;

class Frame extends TopLevelWindow {

    public function new(parent:Window, title:String, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = FrameStyle.DEFAULT_FRAME_STYLE;
        }

        if (_ref == null) {
            _ref = WxFrame.createInstance();
            var str = WxString.createInstance(title);
            frameRef.ptr.create(Window.toRaw(parent), id, str.ref, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            str.destroy();
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var menuBar(get, set):MenuBar;
    @:access(hx.widgets.MenuBar)
    private function get_menuBar():MenuBar {
        var m:MenuBar = new MenuBar(0, false);
        var p = frameRef.ptr.getMenuBar();
        m._ref = Pointer.fromRaw(untyped __cpp__("(wxWindow*)({0})", p));
        return m;
    }
    @:access(hx.widgets.MenuBar)
    private function set_menuBar(value:MenuBar):MenuBar {
        frameRef.ptr.setMenuBar(value.menuBarRef.get_raw());
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var frameRef(get, null):Pointer<WxFrame>;
    private function get_frameRef():Pointer<WxFrame> {
        return Pointer.fromRaw(untyped __cpp__("(wxFrame*)(_ref->get_raw())"));
    }

}
