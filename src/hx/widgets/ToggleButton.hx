package hx.widgets;

import cpp.Pointer;
import wx.widgets.ToggleButton in WxToggleButton;
import wx.widgets.WxString;

class ToggleButton extends AnyButton {

    public function new(parent:Window, label:String = "", style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxToggleButton.createInstance().reinterpret();
            if (label != null) {
                var str = WxString.fromUTF8(label);
                toggleButtonRef.ptr.create(Window.toRaw(parent), id, str);
            } else {
                //toggleButtonRef.ptr.create(Window.toRaw(parent), id, null);
            }
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var value(get, set):Bool;
    private function get_value():Bool {
        return toggleButtonRef.ptr.getValue();
    }
    private function set_value(value:Bool):Bool {
        toggleButtonRef.ptr.setValue(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var toggleButtonRef(get, null):Pointer<WxToggleButton>;
    private function get_toggleButtonRef():Pointer<WxToggleButton> {
       return _ref.reinterpret();
    }
}