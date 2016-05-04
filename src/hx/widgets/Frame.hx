package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.FrameStyle;
import wx.widgets.Frame in WxFrame;
import wx.widgets.MenuBar in WxMenuBar;

class Frame extends TopLevelWindow {
    public function new(parent:Window, title:String, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = FrameStyle.DEFAULT_FRAME_STYLE;
        }
        
        if (_ref == null) {
            _ref = WxFrame.createInstance();
            frameRef.ptr.create(Window.toRaw(parent), id, title, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var menuBar(get, set):MenuBar;
    @:access(hx.widgets.MenuBar)
    private function get_menuBar():MenuBar {
        var menuBar:MenuBar = new MenuBar(0, false);
        var p = frameRef.ptr.getMenuBar();
        menuBar._ref = cast p.raw;
        return menuBar;
    }
    @:access(hx.widgets.MenuBar)
    private function set_menuBar(value:MenuBar):MenuBar {
        frameRef.ptr.setMenuBar(value.menuBarRef);
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
