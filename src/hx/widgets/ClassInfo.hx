package hx.widgets;

import cpp.Pointer;
import wx.widgets.ClassInfo in WxClassInfo;
import wx.widgets.WxString;

class ClassInfo {

    private var _ref:Pointer<WxClassInfo>;

    public function new() {
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var className(get, null):String;
    private function get_className():String {
        var r:WxString = _ref.ptr.getClassName();
        return new String(r.toUTF8().data());
    }

}
