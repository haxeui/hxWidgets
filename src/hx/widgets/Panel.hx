package hx.widgets;

import hx.widgets.styles.BackgroundStyle;
import wx.widgets.Panel in WxPanel;

class Panel extends Window {
	@:access(hx.widgets.Window)
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var panelRef:WxPanel = WxPanel.createInstance();
            var bgStyle:BackgroundStyle = BackgroundStyle.BG_TRANSPARENT;
            panelRef.setBackgroundStyle(#if (haxe_ver >= 3.3) bgStyle #else untyped __cpp__("((wxBackgroundStyle)bgStyle)")#end);
            panelRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = panelRef;
        }
        
        super(parent, id);
    }
}
