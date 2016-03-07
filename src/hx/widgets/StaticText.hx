package hx.widgets;

import wx.widgets.StaticText in WxStaticText;

class StaticText extends Control {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {        
            var textRef:WxStaticText = WxStaticText.createInstance();
            textRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, text, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = textRef;
        }
        
        super(parent, id);
    }
    
    public function wrap(width:Int) {
        staticTextRef.wrap(width);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticTextRef(get, null):WxStaticText;
    private inline function get_staticTextRef():WxStaticText {
        return cast _ref;
    }
}
