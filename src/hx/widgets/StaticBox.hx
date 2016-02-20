package hx.widgets;

import wx.widgets.StaticBox in WxStaticBox;

class StaticBox extends Control {
    public function new(parent:Window, title:String = null, id:Int = -1) {
        if (_ref == null) {        
            var boxRef:WxStaticBox = WxStaticBox.createInstance();
            boxRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title);
            _ref = boxRef;
        }
        
        super(parent, id);
    }
}
