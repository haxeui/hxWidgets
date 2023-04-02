package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.Clipboard in WxClipboard;

@:access(hx.widgets.DataObject)
class Clipboard extends Object {
    private function new() { // private constructor, should not create direction (use Clipboard.get())
    }

    public function open():Bool {
        return clipboardRef.ptr.open();
    }

    public function close() {
        clipboardRef.ptr.close();
    }

    public function getData(data:DataObject):Bool {
        return clipboardRef.ptr.getData(data._ref.ref);
    }

    public function setData(data:DataObject):Bool {
        return clipboardRef.ptr.setData(data._ref.raw);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Statics
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function get():Clipboard {
        var c = new Clipboard();
        var p:RawPointer<WxClipboard> = untyped __cpp__("wxTheClipboard");
        c._ref = Pointer.fromRaw(p).reinterpret();
        return c;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static var textData(get, set):String;
    private static function get_textData():String {
        var data = null;

        var clipboard = Clipboard.get();
        clipboard.open();
        var td = new TextDataObject();
        clipboard.getData(td);
        clipboard.close();
        data = td.text;
        td.destroy();

        return data;
    }
    private static function set_textData(value:String):String {
        var clipboard = Clipboard.get();
        clipboard.open();
        var td = new TextDataObject(value);
        clipboard.setData(td);
        clipboard.close();
        //td.destroy();
        return value;
    }

    private var clipboardRef(get, null):Pointer<WxClipboard>;
    private function get_clipboardRef():Pointer<WxClipboard> {
       return _ref.reinterpret();
    }
}