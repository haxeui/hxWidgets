package hx.widgets;

import cpp.Pointer;
import wx.widgets.StaticBox in WxStaticBox;
import wx.widgets.WxString;

class StaticBox extends Control {

    public function new(parent:Window, title:String = null, id:Int = -1) {
        if (_ref == null) {
            _ref = WxStaticBox.createInstance();
            var str = WxString.createInstance(title);
            staticBoxRef.ptr.create(Window.toRaw(parent), id, str.ref);
            str.destroy();
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticBoxRef(get, null):Pointer<WxStaticBox>;
    private function get_staticBoxRef():Pointer<WxStaticBox> {
       return _ref.reinterpret();
    }

}
