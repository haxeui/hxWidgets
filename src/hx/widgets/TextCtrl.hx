package hx.widgets;

import wx.widgets.TextCtrl in WxTextCtrl;

class TextCtrl extends Window {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var textRef:WxTextCtrl = WxTextCtrl.createInstance();
        textRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = textRef;
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
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textRef(get, null):WxTextCtrl;
    private inline function get_textRef():WxTextCtrl {
        return cast _ref;
    }
}
