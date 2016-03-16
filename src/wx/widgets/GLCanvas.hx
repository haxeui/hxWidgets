package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/glcanvas.h")
@:unreflective
@:native("cpp::Reference<wxGLCanvas>")
extern class GLCanvas extends GLCanvasImpl {
    @:native("new wxGLCanvas")      public static function createInstance(parent:Window, id:Int, attribList:IntStar, pt:Point, size:Size):GLCanvas;
}

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLCanvas")
extern class GLCanvasImpl extends Window {
    @:native("SetColour")       public function setColour(colour:ConstCharStar):Bool;
    @:native("SetCurrent")      public function setCurrent(current:GLContext):Bool;
}

@:native("const int*")
extern class IntStar {    
}