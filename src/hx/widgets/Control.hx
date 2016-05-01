package hx.widgets;

import cpp.Pointer;
import wx.widgets.Control in WxControl;
import wx.widgets.WxString;

class Control extends Window {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var controlRef:Pointer<WxControl> = WxControl.createInstance();
            controlRef.ptr.create(parent != null ? parent._ref : null, id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            _ref = cast controlRef.raw;
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var label(get, set):String;
    private function get_label():String {
        var r:WxString = controlRef.ptr.getLabel();
        return new String(r.c_str());
    }
    private function set_label(value:String):String {
        var s = WxString.createInstance(value);
        controlRef.ptr.setLabel(s.ref);
        s.destroy();
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var controlRef(get, null):Pointer<WxControl>;
    private inline function get_controlRef():Pointer<WxControl> {
        return cast _ref.raw;
    }
}
/*
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
*/