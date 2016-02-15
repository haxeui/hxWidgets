package hx.widgets;

import wx.widgets.Panel in WxPanel;

class Panel extends Window {
	@:access(hx.widgets.Window)
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var panelRef:WxPanel = WxPanel.createInstance();
        panelRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = cast panelRef;
    }
}
