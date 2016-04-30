package hx.widgets;

import cpp.Pointer;
import wx.widgets.Colour in WxColour;

class Colour {
    private var _ref:Pointer<WxColour>;
    public function new(colour:Int = -1) {
        if (colour != -1) {
            _ref = WxColour.createInstance(convertColor(colour));
        }
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function set(r:Int, g:Int, b:Int, a:Int) {
        _ref.ref.set(r, g, b, a);
    }
    
    public var rgb(get, set):Int;
    private function get_rgb():Int {
        return convertColor(_ref.ref.GetRGB());
    }
    private function set_rgb(value:Int):Int {
        _ref.ref.SetRGB(convertColor(value));
        return value;
    }

    public var rgba(get, set):Int;
    private function get_rgba():Int {
        return convertColor(_ref.ref.GetRGBA());
    }
    private function set_rgba(value:Int):Int {
        _ref.ref.SetRGBA(convertColor(value));
        return value;
    }
    
    public function destroy() {
        _ref.destroy();
        _ref = null;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function fromPtr(ptr:Pointer<WxColour>):Colour {
        var c:Colour = new Colour();
        c._ref = ptr;
        return c;
    }
    
    public static inline function convertColor(c:Int) {
        return (c & 0x000000ff) << 16 | (c & 0x0000FF00) | (c & 0x00FF0000) >> 16;
    }
}

/*
import wx.widgets.Colour in WxColour;

class Colour {
    private var _ref:WxColour;

    public function new(colour:Int = 0x000000) {
        _ref = WxColour.createInstance(colour);
    }
    
    public function set(r:Int, g:Int, b:Int, a:Int) {
        _ref.set(r, g, b, a);
    }
}

*/