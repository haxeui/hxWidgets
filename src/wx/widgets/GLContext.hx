package wx.widgets;

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLContext")
extern class GLContext {

    @:native("new wxGLContext")     private static function _new(win:RawPointer<GLCanvas>):RawPointer<GLContext>;
                                    public static inline function createInstance(win:RawPointer<GLCanvas>):Pointer<GLContext> {
                                        return Pointer.fromRaw(_new(win));
                                    }

}