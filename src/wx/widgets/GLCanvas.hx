package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
@:include("wx/glcanvas.h")
@:unreflective
@:native("cpp::Reference<wxGLCanvas>")
extern class GLCanvas extends GLCanvasImpl {

}

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLCanvas")
extern class GLCanvas extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxGLCanvas")      private static function _new(parent:Window, id:Int, attribList:Pointer<Int>, pt:Point, size:Size, style:Int):RawPointer<GLCanvas>;
                                    public static inline function createInstance(parent:Window, id:Int, attribList:Pointer<Int>, pt:Point, size:Size, style:Int):Pointer<GLCanvas> return Pointer.fromRaw(_new(parent, ));

    @:native("new wxGLCanvas")      public static function createInstance(parent:Window, id:Int, attribList:Pointer<Int>, pt:Point, size:Size, style:Int):GLCanvas;

    @:native("SetColour")           public function setColour(colour:ConstCharStar):Bool;
    @:native("SetCurrent")          public function setCurrent(current:GLContext):Bool;
}