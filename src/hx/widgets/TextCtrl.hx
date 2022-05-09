package hx.widgets;

import cpp.Pointer;
import wx.widgets.TextCtrl in WxTextCtrl;
import wx.widgets.WxString;

class TextCtrl extends Control implements TextEntry {

    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxTextCtrl.createInstance().reinterpret();
            var str = WxString.fromUTF8(text);
            textCtrlRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function appendText(value:String) {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.appendText(s);
    }

    public var insertionPoint(get, set):Int;
    private function get_insertionPoint():Int {
        return textCtrlRef.ptr.getInsertionPoint();
    }
    private function set_insertionPoint(value:Int):Int {
        textCtrlRef.ptr.setInsertionPoint(value);
        return value;
    }

    public var value(get, set):String;
    private function get_value():String {
        var r:WxString = textCtrlRef.ptr.getValue();
        return new String(r.toUTF8().data());
    }
    private function set_value(value:String):String {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.setValue(s);
        return value;
    }

    public var hint(get, set):String;
    private function get_hint():String {
        var r:WxString = textCtrlRef.ptr.getHint();
        return new String(r.toUTF8().data());
    }
    private function set_hint(value:String):String {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.setHint(s);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textCtrlRef(get, null):Pointer<WxTextCtrl>;
    private function get_textCtrlRef():Pointer<WxTextCtrl> {
        return _ref.reinterpret();
    }

}
