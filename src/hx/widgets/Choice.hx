package hx.widgets;

import cpp.Pointer;
import wx.widgets.Choice in WxChoice;
import wx.widgets.WxString;

class Choice extends Control implements ItemContainer {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxChoice.createInstance().reinterpret();
            choiceRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, 0, null, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainer
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function append(string:String):Int {
        var s = WxString.fromUTF8(string);
        var n:Int = choiceRef.ptr.append(s);
        return n;
    }

    public function delete(n:Int):Void {
        choiceRef.ptr.delete(n);
    }

    public function clear():Void {
        choiceRef.ptr.clear();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainerImmutable
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function setString(n:Int, string:String):Void {
        var s = WxString.fromUTF8(string);
        choiceRef.ptr.setString(n, s);
    }

    public function getString(n:Int):String {
        var r:WxString = choiceRef.ptr.getString(n);
        return new String(r.c_str().asChar());
    }

    public var selection(get, set):Int;
    private function get_selection():Int {
        return choiceRef.ptr.getSelection();
    }
    private function set_selection(value:Int):Int {
        choiceRef.ptr.setSelection(value);
        return value;
    }

    public var selectedString(get, set):String;
    private function get_selectedString():String {
        var r:WxString = choiceRef.ptr.getStringSelection();
        return new String(r.c_str().asChar());
    }
    private function set_selectedString(value:String):String {
        var s = WxString.fromUTF8(value);
        choiceRef.ptr.setStringSelection(s);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var choiceRef(get, null):Pointer<WxChoice>;
    private function get_choiceRef():Pointer<WxChoice> {
       return _ref.reinterpret();
    }
}
