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
            _ref = WxFrame.createInstance().reinterpret();
            var str = WxString.fromUTF8(title);
            frameRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
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
        var p = Pointer.fromRaw(frameRef.ptr.getMenuBar());
        m._ref = p.reinterpret();
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
        return _ref.reinterpret();
    }

}
