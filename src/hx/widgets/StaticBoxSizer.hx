package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.StaticBoxSizer in WxStaticBoxSizer;
import wx.widgets.StaticBox in WxStaticBox;
import wx.widgets.WxString;

class StaticBoxSizer extends BoxSizer {

    public function new(orient:Orientation = null, window:Window, title:String = "") {
        if (_ref == null) {
            if (title != null) {
                var str = WxString.fromUTF8(title);
                _ref = WxStaticBoxSizer.createInstance(orient, Window.toRaw(window), str).reinterpret();
            } else {
                
            }
        }

        super();
    }

    public var staticBox(get, null):StaticBox;
    @:access(hx.widgets.Window)
    private function get_staticBox():StaticBox {
        var p:RawPointer<WxStaticBox> = staticBoxSizerRef.ptr.getStaticBox();
        var t = Type.createEmptyInstance(StaticBox);
        t._ref = Pointer.fromRaw(p).reinterpret();
        return t;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticBoxSizerRef(get, null):Pointer<WxStaticBoxSizer>;
    private function get_staticBoxSizerRef():Pointer<WxStaticBoxSizer> {
        return _ref.reinterpret();
    }
}
