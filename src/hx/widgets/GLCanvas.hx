package hx.widgets;

import wx.widgets.GLCanvas in WxGLCanvas;

@:headerCode("#undef RegisterClass")
class GLCanvas extends Window {
    public function new(parent:Window, id:Int = -1) {
        if (_ref == null) {
            var buttonRef:WxGLCanvas = WxGLCanvas.createInstance(parent != null ? parent._ref : Window.nullWindowRef, id, cast 0, Point.defaultPositionRef, Size.defaultSizeRef);
            _ref = buttonRef;
        }
        
        super(parent, id);
    }
    
    public function setColour(colour:String):Bool {
        return canvasRef.setColour(colour);
    }
    
    @:access(hx.widgets.GLContext)
    public function setCurrent(current:GLContext):Bool {
        return canvasRef.setCurrent(current._ref);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var canvasRef(get, null):WxGLCanvas;
    private function get_canvasRef():WxGLCanvas {
        return cast _ref;
    }
}