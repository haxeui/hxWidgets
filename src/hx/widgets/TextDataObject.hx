package hx.widgets;

import cpp.Pointer;
import wx.widgets.TextDataObject as WxTextDataObject;
import wx.widgets.WxString;

class TextDataObject extends DataObjectSimple {
    public function new(text:String = null) {
        if (text != null) {
            var str = WxString.fromUTF8(text);
            _ref = WxTextDataObject.createInstance(str).reinterpret();
        } else {
            _ref = WxTextDataObject.createEmptyInstance().reinterpret();
        }
    }

    public var text(get, set):String;
    private function get_text():String {
        var r:WxString = textDataObjectRef.ptr.getText();
        return new String(r.toUTF8().data());
    }
    private function set_text(value:String):String {
        var s = WxString.fromUTF8(value);
        textDataObjectRef.ptr.setText(s);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textDataObjectRef(get, null):Pointer<WxTextDataObject>;
    private function get_textDataObjectRef():Pointer<WxTextDataObject> {
       return _ref.reinterpret();
    }
}