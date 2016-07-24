package hx.widgets;

import cpp.Pointer;
import wx.widgets.GLContext in WxGLContext;

class GLContext extends Object {

    @:access(hx.widgets.GLCanvas)
    public function new(win:GLCanvas) {
         _ref = WxGLContext.createInstance(cast win._ref).reinterpret();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var glContextRef(get, null):Pointer<WxGLContext>;
    private function get_glContextRef():Pointer<WxGLContext> {
        return cast _ref.reinterpret();
    }
}
