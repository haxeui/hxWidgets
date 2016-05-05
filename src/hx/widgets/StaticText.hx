package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.StaticText in WxStaticText;

class StaticText extends Control {
    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {    
            _ref = WxStaticText.createInstance();
            staticTextRef.ptr.create(Window.toRaw(parent), id, text, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function wrap(width:Int) {
        staticTextRef.ptr.wrap(width);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticTextRef(get, null):Pointer<WxStaticText>;
    private function get_staticTextRef():Pointer<WxStaticText> {
       return Pointer.fromRaw(untyped __cpp__("(wxStaticText*)(_ref->get_raw())"));
    }
}
