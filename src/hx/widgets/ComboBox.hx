package hx.widgets;

import cpp.Pointer;
import wx.widgets.ComboBox in WxComboBox;
import wx.widgets.WxString;

class ComboBox extends Control implements ItemContainer {
    public function new(parent:Window, value:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxComboBox.createInstance().reinterpret();
            if (value != null) {
                var str = WxString.createInstance(value);
                comboBoxRef.ptr.create(Window.toRaw(parent), id, str.ref, Point.defaultPosition.ref, Size.defaultSize.ref, 0, null, style);
                str.destroy();
            } else {
                var str = WxString.createInstance("");
                comboBoxRef.ptr.create(Window.toRaw(parent), id, str.ref, Point.defaultPosition.ref, Size.defaultSize.ref, 0, null, style);
                str.destroy();
            }
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainer
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function append(string:String):Int {
        var s = WxString.createInstance(string);
        var n:Int = comboBoxRef.ptr.append(s.ref);
        s.destroy();
        return n;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainerImmutable
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function setString(n:Int, string:String):Void {
        var s = WxString.createInstance(string);
        comboBoxRef.ptr.setString(n, s.ref);
        s.destroy();
    }

    public function getString(n:Int):String {
        var r:WxString = comboBoxRef.ptr.getString(n);
        return new String(r.c_str().asChar());
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var comboBoxRef(get, null):Pointer<WxComboBox>;
    private function get_comboBoxRef():Pointer<WxComboBox> {
       return _ref.reinterpret();
    }
}