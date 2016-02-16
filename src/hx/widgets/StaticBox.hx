package hx.widgets;

import wx.widgets.StaticBox in WxStaticBox;

class StaticBox extends Window {
    public function new(parent:Window, title:String = null, id:Int = -1) {
        super(parent, id);
        
        var boxRef:WxStaticBox = WxStaticBox.createInstance();
        boxRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title);
        _ref = boxRef;
    }
}
