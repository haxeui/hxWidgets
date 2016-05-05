package hx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

import wx.widgets.Sizer in WxSizer;

class Sizer {
    private var _ref:Pointer<WxSizer>;

    public function new() {

    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function add(window:Window, proportion:Int = 0, flag:SizerFlag = SizerFlag.NONE, border:Int = 0) {
        _ref.ptr.add(Window.toRaw(window), proportion, flag, border);
    }

    public function addSizer(sizer:Sizer, proportion:Int = 0, flag:SizerFlag = SizerFlag.NONE, border:Int = 0) {
        _ref.ptr.add(Sizer.toRaw(sizer), proportion, flag, border);
    }


    public function addSpacer(size:Int) {
        _ref.ptr.addSpacer(size);
    }


    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function toRaw(sizer:Sizer):RawPointer<WxSizer> {
        if (sizer == null) {
            return null;
        }
        return sizer._ref.get_raw();
    }
}