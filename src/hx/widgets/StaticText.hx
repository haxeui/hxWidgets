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
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticTextRef(get, null):Pointer<WxStaticText>;
    private function get_staticTextRef():Pointer<WxStaticText> {
       return Pointer.fromRaw(untyped __cpp__("(wxStaticText*)(_ref->get_raw())"));
    }
}
/*
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
    
    
    public function test() {
        trace(staticTextRef.test().length());
        trace(staticTextRef.test().c_str());
        return null;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var staticTextRef(get, null):WxStaticText;
    private inline function get_staticTextRef():WxStaticText {
        return cast _ref;
    }
}
*/