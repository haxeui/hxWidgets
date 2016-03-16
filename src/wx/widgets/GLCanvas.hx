package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.abi.Abi;

@:include("wx/glcanvas.h")
@:unreflective
@:native("cpp::Reference<wxGLCanvas>")
extern class GLCanvas extends GLCanvasImpl {
    @:native("new wxGLCanvas")      public static function createInstance(parent:Window, id:Int, attribList:Pointer<Int>, pt:Point, size:Size, style:Int):GLCanvas;
}

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLCanvas")
extern class GLCanvasImpl extends Window {
    @:native("SetColour")           public function setColour(colour:ConstCharStar):Bool;
    @:native("SetCurrent")          public function setCurrent(current:GLContext):Bool;
}