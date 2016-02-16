package hx.widgets;

import wx.widgets.Frame in WxFrame;
import wx.widgets.MenuBar in WxMenuBar;

class Frame extends Window {
    private var _hasStatusBar:Bool;
    
    public function new(parent:Window, title:String, id:Int = -1) {
        super(parent, id);
        
        var frameRef:WxFrame = WxFrame.createInstance();
        frameRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title);
        _ref = frameRef;
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
