package hx.widgets;

import wx.widgets.GLContext in WxGLContext;

class GLContext extends Object {

    @:access(hx.widgets.GLCanvas)
    public function new(win:GLCanvas) {
         _ref = WxGLContext.createInstance(cast win._ref).reinterpret();
    }

}
