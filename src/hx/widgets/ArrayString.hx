package hx.widgets;

import cpp.Pointer;
import wx.widgets.ArrayString in WxArrayString;
import wx.widgets.WxString;

class ArrayString { //extends WxArray<String> {

    //TODO: WxArray doesn't work, check on how to template native classes
    private var _ref:Pointer<WxArrayString>;

    public function new() {
        _ref = WxArrayString.createInstance().reinterpret();
    }

    public function destroy() {
        _ref.destroy();
        _ref = null;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function add(str:String):Int {
        var s:Pointer<WxString> = WxString.createInstance(str);
        var n:Int = arraystringRef.ptr.add(s.ref);
        s.destroy();
        return n;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromArray(arr:Array<String>):ArrayString {
        var a:ArrayString = new ArrayString();
        for (item in arr) {
            a.add(item);
        }
        return a;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var arraystringRef(get, null):Pointer<WxArrayString>;
    private function get_arraystringRef():Pointer<WxArrayString> {
        return _ref.reinterpret();
    }

}
