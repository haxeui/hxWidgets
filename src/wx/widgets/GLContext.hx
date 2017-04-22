package wx.widgets;

import cpp.RawPointer;
import cpp.Pointer;

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLContext")
@:structAccess
extern class GLContext extends Object {
    @:native("new wxGLContext")     private static function _new(win:RawPointer<GLCanvas>):RawPointer<GLContext>;
                                    public static inline function createInstance(win:RawPointer<GLCanvas>):Pointer<GLContext> {
                                        return Pointer.fromRaw(_new(win));
                                    }

}