package hx.widgets;

import cpp.Pointer;
import wx.widgets.StringToStringHashMap in WxStringToStringHashMap;
import wx.widgets.WxString;

class StringToStringHashMap {
    private var _ref:Pointer<WxStringToStringHashMap>;
    
    public function new() {
        _ref = WxStringToStringHashMap.createInstance();
    }
    
    public var size(get, null):Int;
    private function get_size():Int {
        return _ref.ptr.size();
    }
        
    public var isEmpty(get, null):Bool;
    private function get_isEmpty():Bool {
        return _ref.ptr.empty();
    }
    
    public function clear() {
        _ref.ptr.clear();
    }
    
    public function set(key:String, value:String) {
        var k = WxString.createInstance(key);
        var v = WxString.createInstance(value);
        _ref.ptr.set(k.ref, v.ref);
        k.destroy();
        v.destroy();
    }
    
    public function get(key:String):String {
        var k = WxString.createInstance(key);
        var v = _ref.ptr.get(k.ref);
        var r = new String(v.toUTF8().data());
        return r;
    }
}