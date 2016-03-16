package wx.widgets;

@:include("wx/glcanvas.h")
@:unreflective
@:native("cpp::Reference<wxGLContext>")
extern class GLContext extends GLContextImpl {
    @:native("new wxGLContext")     public static function createInstance(win:GLCanvas):GLContext;
}

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLContext")
extern class GLContextImpl {
}