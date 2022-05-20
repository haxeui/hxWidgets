package hx.widgets;

import cpp.Pointer;
import wx.widgets.StaticLine in WxStaticLine;

class StaticLine extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxStaticLine.createInstance().reinterpret();
            staticLineRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticLineRef(get, null):Pointer<WxStaticLine>;
    private function get_staticLineRef():Pointer<WxStaticLine> {
       return _ref.reinterpret();
    }
}