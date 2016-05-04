package hx.widgets;
import cpp.Pointer;

import wx.widgets.Sizer in WxSizer;

class Sizer {
    private var _ref:Pointer<WxSizer>;
    
    public function new() {
        
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function add(window:Window, proportion:Int = 0, flag:Int = 0, border:Int = 0) {
        _ref.ptr.add(Window.toRaw(window), proportion, flag, border);
    }
}