package hx.widgets;

import cpp.Pointer;
import wx.widgets.TextCtrl in WxTextCtrl;
import wx.widgets.WxString;

class TextCtrl extends Control {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxTextCtrl.createInstance();
            textCtrlRef.ptr.create(parent != null ? parent._ref.get_raw() : null, id, text, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function appendText(value:String) {
        textCtrlRef.ptr.appendText(value);
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
        return new String(r.c_str());
    }
    private function set_value(value:String):String {
        var s = WxString.createInstance(value);
        textCtrlRef.ptr.setValue(s.ref);
        s.destroy();
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textCtrlRef(get, null):Pointer<WxTextCtrl>;
    private function get_textCtrlRef():Pointer<WxTextCtrl> {
        return untyped __cpp__("(wxTextCtrl*)(_ref->get_raw())");
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