package hx.widgets;

import cpp.Pointer;
import wx.widgets.GLContext in WxGLContext;

@:headerCode("#undef RegisterClass")
class GLContext extends Object {

    public function new(canvas:GLCanvas) {
         _ref = WxGLContext.createInstance(canvas._ref.rawCast()).reinterpret();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var glContextRef(get, null):Pointer<WxGLContext>;
    private function get_glContextRef():Pointer<WxGLContext> {
        return _ref.reinterpret();
    }
}
