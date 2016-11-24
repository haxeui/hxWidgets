package hx.widgets;

import cpp.Pointer;
import wx.widgets.ClassInfo in WxClassInfo;

class ClassInfo {

    private var _ref:Pointer<WxClassInfo>;

    public function new() {
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var className(get, null):String;
    private function get_className():String {
        return new String(_ref.ptr.getClassName());
    }

}
