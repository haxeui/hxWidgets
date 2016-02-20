package hx.widgets;

import hx.widgets.style.HyperlinkCtrlStyle;
import wx.widgets.HyperlinkCtrl in WxHyperlinkCtrl;

class HyperlinkCtrl extends Control {
    public function new(parent:Window, text:String = null, url:String = null, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = HyperlinkCtrlStyle.ALIGN_LEFT;
        }
        
        if (_ref == null) {
            var linkRef:WxHyperlinkCtrl = WxHyperlinkCtrl.createInstance();
            linkRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, url, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = linkRef;
        }
        
        super(parent, id);
    }
}
