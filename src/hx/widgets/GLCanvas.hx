package hx.widgets;

import cpp.NativeArray;
import cpp.Pointer;

import wx.widgets.GLCanvas in WxGLCanvas;

@:headerCode("#undef RegisterClass")
class GLCanvas extends Window {

    public function new(parent:Window, options:Array<Int> = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var attribList:Pointer<Int> = cast 0;
            if (options != null) {
                attribList = NativeArray.address(options, 0);
            }

            var canvasRef:WxGLCanvas = WxGLCanvas.createInstance(parent != null ? parent._ref : Window.nullWindowRef, id, attribList, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = canvasRef;
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
