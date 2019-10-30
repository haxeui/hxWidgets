package hx.widgets;

import cpp.Pointer;
import wx.widgets.StaticLine in WxStaticLine;

class StaticLine extends Control {
    public function new(parent:Window, id:Int = -1) {
        if (_ref == null) {
            _ref = WxStaticLine.createInstance().reinterpret();
            staticLineRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref);
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