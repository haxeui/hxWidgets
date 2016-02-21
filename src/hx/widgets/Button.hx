package hx.widgets;

import cpp.Pointer;
import wx.widgets.Button in WxButton;

class Button extends Control {
    public function new(parent:Window, label:String, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var buttonRef:WxButton = WxButton.createInstance();
            buttonRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, label, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = buttonRef;
        }
        
        super(parent, id);
    }
    
    @:access(hx.widgets.Bitmap)
    public function setBitmap(bitmap:Bitmap) {
        buttonRef.setBitmap(bitmap._ref);
    }
    
    public function setBitmapPosition(dir:Direction) {
        buttonRef.setBitmapPosition(untyped __cpp__("((wxDirection)dir)"));
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var buttonRef(get, null):WxButton;
    private function get_buttonRef():WxButton {
        return cast _ref;
    }
}
