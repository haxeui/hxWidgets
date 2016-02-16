package hx.widgets;

import wx.widgets.StaticText in WxStaticText;

class StaticText extends Window {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        super(parent, id);
        
        var textRef:WxStaticText = WxStaticText.createInstance();
        textRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, Point.defaultPositionRef, Size.defaultSizeRef, style);
        _ref = textRef;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticTextRef(get, null):WxStaticText;
    private inline function get_staticTextRef():WxStaticText {
        return cast _ref;
    }
}
