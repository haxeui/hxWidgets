package hx.widgets;

import wx.widgets.Control in WxControl;

class Control extends Window {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var controlRef:WxControl = WxControl.createInstance();
            controlRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = controlRef;
        }
        
        super(parent, id);
    }
    
    public function setLabel(label:String) {
        controlRef.setLabel(label);
    }
    
    public function getLabel():String {
        return controlRef.getLabel();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var controlRef(get, null):WxControl;
    private function get_controlRef():WxControl {
        return cast _ref;
    }
}