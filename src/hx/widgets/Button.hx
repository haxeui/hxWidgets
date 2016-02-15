package hx.widgets;

import wx.widgets.Button in WxButton;

class Button extends Window {
    public function new(parent:Window, label:String, id:Int = -1) {
        super(parent, id);
        
        var buttonRef:WxButton = WxButton.createInstance();
        buttonRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label);
        _ref = cast buttonRef;
    }
    
    @:access(hx.widgets.Bitmap)
    public function setBitmap(bitmap:Bitmap) {
        buttonRef.setBitmap(bitmap._ref);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var buttonRef(get, null):WxButton;
    private function get_buttonRef():WxButton {
        return cast _ref;
    }
}
