package hx.widgets;

import cpp.Pointer;
import wx.widgets.Control in WxControl;
import wx.widgets.WxString;

class Control extends Window {

    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxControl.createInstance().reinterpret();
            controlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var label(get, set):String;
    private function get_label():String {
        var r:WxString = controlRef.ptr.getLabel();
        return new String(r.c_str().asChar());
    }
    private function set_label(value:String):String {
        var s = WxString.createInstance(value);
        controlRef.ptr.setLabel(s.ref);
        s.destroy();
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var controlRef(get, null):Pointer<WxControl>;
    private function get_controlRef():Pointer<WxControl> {
        return _ref.reinterpret();
    }

}
