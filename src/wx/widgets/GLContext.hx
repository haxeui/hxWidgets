package wx.widgets;

@:include("wx/glcanvas.h")
@:unreflective
@:native("cpp::Reference<wxGLContext>")
extern class GLContext {
    @:native("new wxGLContext") public static function createInstance(win:GLCanvas):GLContext;
}