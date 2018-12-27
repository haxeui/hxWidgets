package hx.widgets;

import cpp.Pointer;
import wx.widgets.SpinCtrl in WxSpinCtrl;
import wx.widgets.WxString;

class SpinCtrl extends Control {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxSpinCtrl.createInstance().reinterpret();
            var str = WxString.fromUTF8(text);
            spinCtrlRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }
    

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var spinCtrlRef(get, null):Pointer<WxSpinCtrl>;
    private function get_spinCtrlRef():Pointer<WxSpinCtrl> {
       return _ref.reinterpret();
    }
}