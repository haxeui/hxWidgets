package hx.widgets;

import cpp.Pointer;
import wx.widgets.Object in WxObject;

class Object {

    private var _ref:Pointer<WxObject>;

    public function destroy():Bool {
        if (_ref != null) {
            _ref.destroy();
            _ref = null;
        }
        return true;
    }
    
}
