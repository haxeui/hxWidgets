package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.FrameStyle;
import wx.widgets.Frame in WxFrame;
import wx.widgets.MenuBar in WxMenuBar;

class Frame extends Window {
    public function new(parent:Window, title:String, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = FrameStyle.DEFAULT_FRAME_STYLE;
        }
        
        if (_ref == null) {
            var frameRef:Pointer<WxFrame> = WxFrame.createInstance();
            frameRef.ptr.create(parent != null ? parent._ref : null, id, title, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            _ref = cast frameRef.raw;
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var frameRef(get, null):Pointer<WxFrame>;
    private inline function get_frameRef():Pointer<WxFrame> {
        return cast _ref.raw;
    }
}
/*
import hx.widgets.styles.FrameStyle;
import wx.widgets.Frame in WxFrame;
import wx.widgets.MenuBar in WxMenuBar;

class Frame extends Window {
    private var _hasStatusBar:Bool;
    
    public function new(parent:Window, title:String, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = FrameStyle.DEFAULT_FRAME_STYLE;
        }
        
        if (_ref == null) {
            var frameRef:WxFrame = WxFrame.createInstance();
            frameRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = frameRef;
        }
        
        super(parent, id);
    }
    
    public function createStatusBar() {
        frameRef.createStatusBar();
        _hasStatusBar = true;
    }
    
    public function setStatusText(text:String) {
        if (_hasStatusBar == false) {
            createStatusBar();
        }
        frameRef.setStatusText(text);
    }

    public function getMenuBar():MenuBar {
        var menuBarRef:WxMenuBar = frameRef.getMenuBar();
        var menuBar:MenuBar = new MenuBar(0, false);
        menuBar._ref = cast menuBarRef;
        return menuBar;
    }
    
    @:access(hx.widgets.MenuBar)
    public function setMenuBar(menuBar:MenuBar):Void {
        frameRef.setMenuBar(menuBar.menuBarRef);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var frameRef(get, null):WxFrame;
    private inline function get_frameRef():WxFrame {
        return cast _ref;
    }
}
*/