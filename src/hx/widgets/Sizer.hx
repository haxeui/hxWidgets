package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.Sizer in WxSizer;

class Sizer extends Object {

    public function new() {
    }

    public function destroy() {
        _ref.destroy();
        _ref = null;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function add(window:Window, proportion:Int = 0, flag:SizerFlag = SizerFlag.NONE, border:Int = 0) {
        sizerRef.ptr.add(Window.toRaw(window), proportion, flag, border);
    }

    public function addSizer(sizer:Sizer, proportion:Int = 0, flag:SizerFlag = SizerFlag.NONE, border:Int = 0) {
        sizerRef.ptr.add(Sizer.toRaw(sizer), proportion, flag, border);
    }

    public function addSpacer(size:Int) {
        sizerRef.ptr.addSpacer(size);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function toRaw(sizer:Sizer):RawPointer<WxSizer> {
        if (sizer == null) {
            return null;
        }
        return sizer._ref.rawCast();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var sizerRef(get, null):Pointer<WxSizer>;
    private function get_sizerRef():Pointer<WxSizer> {
        return _ref.reinterpret();
    }

}