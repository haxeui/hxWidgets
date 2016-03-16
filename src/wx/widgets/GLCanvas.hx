package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/glcanvas.h")
@:unreflective
@:native("cpp::Reference<wxGLCanvas>")
extern class GLCanvas extends GLCanvasImpl {
    @:native("new wxGLCanvas")      public static function createInstance(parent:Window, attributes:GLAttributes, id:Int):GLCanvas;
}

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLCanvas")
extern class GLCanvasImpl extends Window {
    @:native("SetColour")       public function setColour(colour:ConstCharStar):Bool;
}