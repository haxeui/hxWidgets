package hx.widgets;

import cpp.Pointer;
import wx.widgets.HeaderColumn in WxHeaderColumn;
import wx.widgets.WxString;

class HeaderColumn {
    private var _ref:Pointer<WxHeaderColumn>;

    public function new() {
    }

    public var title(get, set):String;
    private function get_title():String {
        var r:WxString = headerColumn.ptr.getTitle();
        return new String(r.toUTF8().data());
    }
    private function set_title(value:String):String {
        return value;
    }

    public var alignment(get, set):Int;
    private function get_alignment():Int {
        return cast headerColumn.ptr.getAlignment();
    }
    private function set_alignment(value:Int):Int {
        return value;
    }
    
    public var width(get, set):Int;
    private function get_width():Int {
        var r:Int = headerColumn.ptr.getWidth();
        return r;
    }
    private function set_width(value:Int):Int {
        return value;
    }
    
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
    private var headerColumn(get, null):Pointer<WxHeaderColumn>;
    private function get_headerColumn():Pointer<WxHeaderColumn> {
       return _ref.reinterpret();
    }
}