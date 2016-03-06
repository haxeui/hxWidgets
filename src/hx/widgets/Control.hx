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
    
    public var label(get, set):String;
    private function set_label(label:String) {
        controlRef.setLabel(label);
        return label;
    }
    private function get_label():String {
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
