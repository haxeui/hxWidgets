package hx.widgets;

import cpp.Pointer;
import wx.widgets.ColourData in WxColourData;
import wx.widgets.Colour in WxColour;

class ColourData {
    public function new(colour:Int = -1, chooseFull:Bool = false) {
        if (colour != -1) {
            _colour = Colour.convertColor(colour);
        }
        _chooseFull = chooseFull;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var _colour:Int = -1;
    public var colour(get, set):Int;
    private function get_colour():Int {
        return _colour;
    }
    private function set_colour(value:Int):Int {
        _colour = value;
        return value;
    }
    
    private var _chooseFull:Bool;
    public var chooseFull(get, set):Bool;
    private function get_chooseFull():Bool {
        return _chooseFull;
    }
    private function set_chooseFull(value:Bool):Bool {
        _chooseFull = value;
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxColourData> {
        var p:Pointer<WxColourData> = WxColourData.createInstance();
        if (this._colour != -1) {
            var color:Pointer<WxColour> = new Colour(this._colour).createPointer();
            p.ref.setColour(color.ref);
            color.destroy();
        }
        p.ref.setChooseFull(this._chooseFull);
        return p;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static function copy(ptr:Pointer<WxColourData>):ColourData {
        var c:ColourData = new ColourData();
        c.colour = ptr.ref.getColour().GetRGB();
        c.chooseFull = ptr.ref.getChooseFull();
        return c;
    }
}