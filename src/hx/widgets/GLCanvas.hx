package hx.widgets;

import cpp.NativeArray;
import cpp.Pointer;
import wx.widgets.WxString;

import wx.widgets.GLCanvas in WxGLCanvas;

@:headerCode("#undef RegisterClass")
class GLCanvas extends Window {

    public function new(parent:Window, options:Array<Int> = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var attribList:Pointer<Int> = cast 0;
            if (options != null) {
                attribList = NativeArray.address(options, 0);
            }

            _ref = WxGLCanvas.createInstance(Window.toRaw(parent), id, attribList.rawCast(), Point.defaultPosition.ref, Size.defaultSize.ref, style).reinterpret();
        }

        super(parent, id);
    }

    public function setColour(colour:String):Bool {
        var str = WxString.createInstance(colour);
        return canvasRef.ptr.setColour(str.ref);
        str.destroy();
    }

    @:access(hx.widgets.GLContext)
    public function setCurrent(current:GLContext):Bool {
        return canvasRef.ptr.setCurrent(current.glContextRef.ref);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var canvasRef(get, null):Pointer<WxGLCanvas>;
    private function get_canvasRef():Pointer<WxGLCanvas> {
        return cast _ref.reinterpret();
    }

}
