package hx.widgets;

import cpp.Pointer;
import wx.widgets.Colour in WxColour;

class Colour {
    private var _colour:Int;
    
    public function new(colour:Int = 0x000000) {
        _colour = colour;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var rgb(get, set):Int;
    private function get_rgb():Int {
        return _colour;
    }
    private function set_rgb(value:Int):Int {
        _colour = value;
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxColour> {
        return WxColour.createInstance(_colour);
    }
    
    public static function copy(ptr:Pointer<WxColour>):Colour {
        var c:Colour = new Colour(convertColor(ptr.ref.GetRGB()));
        return c;
    }
    
    public static inline function convertColor(c:Int) {
        return (c & 0x000000ff) << 16 | (c & 0x0000FF00) | (c & 0x00FF0000) >> 16;
    }
}
