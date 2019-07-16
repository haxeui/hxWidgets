package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

import wx.widgets.GCDC in WxGCDC;
import wx.widgets.GraphicsContext in WxGraphicsContext;

class GCDC extends DC {

    @:access(hx.widgets.GraphicsContext)
    public function new(gc:GraphicsContext, create:Bool = true) {
        if (create == true) {
            _ref = WxGCDC.createInstance(gc.graphicscontextRef.rawCast()).reinterpret();
        }
        
        super();
    }
    
    public var graphicsContext(get, null):GraphicsContext;
    private function get_graphicsContext():GraphicsContext {
        var p:RawPointer<WxGraphicsContext> = gcdcRef.ptr.getGraphicsContext();
        var gtx:GraphicsContext = new GraphicsContext();
        gtx._ref = Pointer.fromRaw(p).reinterpret();
        return gtx;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var gcdcRef(get, null):Pointer<WxGCDC>;
    private function get_gcdcRef():Pointer<WxGCDC> {
        return _ref.reinterpret();
    }
}
