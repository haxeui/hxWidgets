package hx.widgets;

import cpp.Pointer;
import wx.widgets.Colour in WxColour;

class Colour extends Object {

    public function new(colour:Int = 0x000000) {
        rgb = colour;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var rgb:Int;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxColour> {
        return WxColour.createInstance(rgb);
    }

    public static function copy(ptr:Pointer<WxColour>):Colour {
        var c:Colour = new Colour(convertColor(ptr.ref.GetRGB()));
        return c;
    }

    public static inline function convertColor(c:Int):Int {
        return (c & 0x000000FF) << 16 | (c & 0x0000FF00) | (c & 0x00FF0000) >> 16;
    }
}
