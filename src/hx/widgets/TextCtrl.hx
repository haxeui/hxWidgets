package hx.widgets;

import cpp.Pointer;
import wx.widgets.TextCtrl in WxTextCtrl;
import wx.widgets.WxString;

class TextCtrl extends Control {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var textRef:Pointer<WxTextCtrl> = WxTextCtrl.createInstance();
            textRef.ptr.create(parent != null ? parent._ref : null, id, text, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            _ref = cast textRef.raw;
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function appendText(value:String) {
        textRef.ptr.appendText(value);
    }
    
    public var insertionPoint(get, set):Int;
    private function get_insertionPoint():Int {
        return textRef.ptr.getInsertionPoint();
    }
    private function set_insertionPoint(value:Int):Int {
        textRef.ptr.setInsertionPoint(value);
        return value;
    }
    
    public var value(get, set):String;
    private function get_value():String {
        var r:WxString = textRef.ptr.getValue();
        return new String(r.c_str());
    }
    private function set_value(value:String):String {
        var s = WxString.createInstance(value);
        textRef.ptr.setValue(s.ref);
        s.destroy();
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textRef(get, null):Pointer<WxTextCtrl>;
    private inline function get_textRef():Pointer<WxTextCtrl> {
        return cast _ref;
    }
}
/*
class TextCtrl extends Control {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var textRef:WxTextCtrl = WxTextCtrl.createInstance();
            textRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = textRef;
        }
        
        super(parent, id);
    }
    
    public function appendText(value:String) {
        textRef.appendText(value);
    }
    
    public var insertionPoint(get, set):Int;
    private function get_insertionPoint():Int {
        return textRef.getInsertionPoint();
    }
    private function set_insertionPoint(value:Int):Int {
        textRef.setInsertionPoint(value);
        return value;
    }
    
    public var value(get, set):String;
    private function get_value():String {
        return textRef.getValue();
    }
    private function set_value(value:String):String {
        textRef.setValue(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textRef(get, null):WxTextCtrl;
    private inline function get_textRef():WxTextCtrl {
        return cast _ref;
    }
}
*/