package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLCanvas")
extern class GLCanvas extends Window {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxGLCanvas")      private static function _new(parent:RawPointer<Window>, id:Int, attribList:RawPointer<Int>, pt:Point, size:Size, style:Int):RawPointer<GLCanvas>;
                                    public static inline function createInstance(parent:RawPointer<Window>, id:Int, attribList:RawPointer<Int>, pt:Point, size:Size, style:Int):Pointer<GLCanvas> {
                                        return Pointer.fromRaw(_new(parent, id, attribList, pt, size, style));
                                    }

    @:native("SetColour")           public function setColour(colour:WxString):Bool;
    @:native("SetCurrent")          public function setCurrent(current:GLContext):Bool;

}