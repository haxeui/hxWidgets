package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.OwnerDrawnPanel in WxOwnerDrawnPanel;
import wx.widgets.GCDC in WxGCDC;

class OwnerDrawnPanel extends Panel {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxOwnerDrawnPanel.createInstance(Window.toRaw(parent)).reinterpret();
        }
        super(parent, style, id);
        ownerDrawnPanelRef.ptr.onPaint = onPaintInternal;
    }

    private function onPaintInternal() {
        var pGCDC:RawPointer<WxGCDC> = ownerDrawnPanelRef.ptr.pGCDC;
        var gdc:GCDC = new GCDC(null, false);
        gdc._ref = Pointer.fromRaw(pGCDC).reinterpret();
        onPaint(gdc);
    }
    
    private function onPaint(gdc:GCDC) {
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var ownerDrawnPanelRef(get, null):Pointer<WxOwnerDrawnPanel>;
    private function get_ownerDrawnPanelRef():Pointer<WxOwnerDrawnPanel> {
        return _ref.reinterpret();
    }
}