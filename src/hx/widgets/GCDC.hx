package hx.widgets;

import wx.widgets.GCDC in WxGCDC;

class GCDC extends DC {

    @:access(hx.widgets.GraphicsContext)
    public function new(gc:GraphicsContext, create:Bool = true) {
        if (create == true) {
            _ref = WxGCDC.createInstance(gc.graphicscontextRef.rawCast()).reinterpret();
        }
        
        super();
    }
}
