package hx.widgets;

import cpp.Pointer;
import wx.widgets.WebView in WxWebView;
import wx.widgets.WxString;

@:headerCode("#undef RegisterClass")
class WebView extends Control {
    public function new(parent:Window, url:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxWebView.createInstance().reinterpret();
            var str = WxString.fromUTF8(url);
            webViewRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function loadURL(url:String) {
        var str = WxString.createInstance(url);
        webViewRef.ptr.loadURL(str.ref);
        str.destroy();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var webViewRef(get, null):Pointer<WxWebView>;
    private function get_webViewRef():Pointer<WxWebView> {
       return _ref.reinterpret();
    }
}
