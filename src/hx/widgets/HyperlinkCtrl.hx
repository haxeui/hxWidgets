package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.HyperlinkCtrlStyle;
import wx.widgets.HyperlinkCtrl in WxHyperlinkCtrl;
import wx.widgets.WxString;

class HyperlinkCtrl extends Control {

    public function new(parent:Window, text:String = null, url:String = null, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = HyperlinkCtrlStyle.ALIGN_LEFT;
        }

        if (_ref == null) {
            _ref = WxHyperlinkCtrl.createInstance().reinterpret();
            var textStr = WxString.fromUTF8(text);
            var urlStr = WxString.fromUTF8(url);
            linkRef.ptr.create(Window.toRaw(parent), id, textStr, urlStr, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var linkRef(get, null):Pointer<WxHyperlinkCtrl>;
    private function get_linkRef():Pointer<WxHyperlinkCtrl> {
       return _ref.reinterpret();
    }
}
