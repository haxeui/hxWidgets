package hx.widgets;

import cpp.Pointer;
import wx.widgets.Object in WxObject;

class Object {

    private var _ref:Pointer<WxObject>;
    private var _disposed:Bool = false;

    public function destroy():Bool {
        if (_ref != null) {
            _ref.destroy();
            _ref = null;
        }
        return true;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var objectRef(get, null):Pointer<WxObject>;
    private function get_objectRef():Pointer<WxObject> {
        return _ref.reinterpret();
    }
}
