package hx.widgets;

import wx.widgets.GLCanvas in WxGLCanvas;

@:headerCode("#undef RegisterClass")
class GLCanvas extends Window {
    
    public function new(parent:Window = null, id:Int = -1) {
        super();
        
        var canvas:WxGLCanvas = WxGLCanvas.createInstance(parent == null ? cast 0 : parent._ref, id);
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