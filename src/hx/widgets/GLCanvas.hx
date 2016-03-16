package hx.widgets;

import wx.widgets.GLCanvas in WxGLCanvas;

@:headerCode("#undef RegisterClass")
class GLCanvas extends Window {
    
    @:access(hx.widgets.GLAttributes)
    public function new(parent:Window = null, attributes:GLAttributes, id:Int = -1) {
        super();
        
        var canvas:WxGLCanvas = WxGLCanvas.createInstance(parent == null ? cast 0 : parent._ref, attributes._ref, id);
        _ref = cast canvas;
    }
    
    public function setColour(name:String) {
        glCanvasRef.setColour(name);
    }
    
    private var glCanvasRef(get, null):WxGLCanvas;
    private inline function get_glCanvasRef():WxGLCanvas {
        return cast _ref;
    }
    
}