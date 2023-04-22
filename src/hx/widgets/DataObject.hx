package hx.widgets;

import cpp.Pointer;
import wx.widgets.DataObject as WxDataObject;

class DataObject {
    private var _ref:Pointer<WxDataObject> = null;
    
    public function destroy():Bool {
        if (_ref != null) {
            _ref.destroy();
            _ref = null;
        }
        return true;
    }
}