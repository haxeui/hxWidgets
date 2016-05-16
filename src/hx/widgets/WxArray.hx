package hx.widgets;

import cpp.Pointer;
import wx.widgets.WxArray in NativeWxArray;

@:generic
class WxArray<T> {

    private var _ref:Pointer<NativeWxArray<T>>;

}
