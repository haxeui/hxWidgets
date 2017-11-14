package hx.widgets;

import cpp.Pointer;
import wx.widgets.WxString;
import wx.widgets.HardBreakWrapper in WxHardBreakWrapper;

class HardBreakWrapper {
    
    private var _ref:Pointer<WxHardBreakWrapper>;
    
    public function new(win:Window, text:String, maxWidth:Int) {
        if (_ref == null) {
            var str = WxString.fromUTF8(text);
            _ref = WxHardBreakWrapper.createInstance(Window.toRaw(win), str, maxWidth);
        }
    }
    
    public var wrapped(get, null):String;
    private function get_wrapped():String {
        var r:WxString = _ref.ptr.getWrapped();
        return new String(r.toUTF8().data());
    }
}
