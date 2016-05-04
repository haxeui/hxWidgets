package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.StaticBox in WxStaticBox;

class StaticBox extends Control {
    public function new(parent:Window, title:String = null, id:Int = -1) {
        if (_ref == null) {     
            _ref = WxStaticBox.createInstance();
            staticBoxRef.ptr.create(Window.toRaw(parent), id, title);
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticBoxRef(get, null):Pointer<WxStaticBox>;
    private function get_staticBoxRef():Pointer<WxStaticBox> {
       return Pointer.fromRaw(untyped __cpp__("(wxStaticBox*)(_ref->get_raw())"));
    }
}
/*
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
*/