package hx.widgets;

import wx.widgets.GLCanvas in WxGLCanvas;

@:headerCode("#undef RegisterClass")
class GLCanvas extends Window {
    
    @:access(hx.widgets.Point)
    @:access(hx.widgets.Size)
    public function new(parent:Window = null, id:Int = -1) {
        super();
        
        var canvas:WxGLCanvas = WxGLCanvas.createInstance(parent == null ? cast 0 : parent._ref, untyped __cpp__("((wxWindowID)id)"));
        _ref = cast canvas;
    }
    
    public function setColour(name:String) {
        glCanvasRef.setColour(name);
    }
    
    public function setCurrent(context:GLContext):Bool {
        return glCanvasRef.setCurrent(context._ref);
    }
    
    private var glCanvasRef(get, null):WxGLCanvas;
    private inline function get_glCanvasRef():WxGLCanvas {
        return cast _ref;
    }
    
}