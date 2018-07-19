package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.Sizer in WxSizer;

class Sizer extends Object {

    public function new() {
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

    public function insert(index:Int, window:Window, proportion:Int = 0, flag:SizerFlag = SizerFlag.NONE, border:Int = 0) {
        sizerRef.ptr.insert(index, Window.toRaw(window), proportion, flag, border);
    }

    public function insertSizer(index:Int, sizer:Sizer, proportion:Int = 0, flag:SizerFlag = SizerFlag.NONE, border:Int = 0) {
        sizerRef.ptr.insert(index, Sizer.toRaw(sizer), proportion, flag, border);
    }

    public function addSpacer(size:Int) {
        sizerRef.ptr.addSpacer(size);
    }

    public function addStretchSpacer(size:Int) {
        sizerRef.ptr.addStretchSpacer(size);
    }
    
    public function remove(index:Int):Bool {
        return sizerRef.ptr.remove(index);
    }

    public function layout() {
        sizerRef.ptr.layout();
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
