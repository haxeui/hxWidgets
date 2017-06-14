package hx.widgets;

import cpp.Pointer;
import wx.widgets.CheckBox in WxCheckBox;
import wx.widgets.WxString;

class CheckBox extends Control {

    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxCheckBox.createInstance().reinterpret();
            var str = WxString.fromUTF8(label);
            checkboxRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var value(get, set):Bool;
    private function get_value():Bool {
        return checkboxRef.ptr.getValue();
    }
    private function set_value(value:Bool):Bool {
        checkboxRef.ptr.setValue(value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var checkboxRef(get, null):Pointer<WxCheckBox>;
    private function get_checkboxRef():Pointer<WxCheckBox> {
        return _ref.reinterpret();
    }

}
