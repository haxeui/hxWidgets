package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.BrushStyle;
import wx.widgets.Brush in WxBrush;
import wx.widgets.Colour in WxColour;

class Brush extends GDIObject {

    public function new(colour:Int = 0x000000) {
        _ref = WxBrush.createInstance().reinterpret();
        this.colour = colour;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var colour(get, set):Int;
    private function get_colour():Int {
        return brushRef.ptr.getColour().GetRGB();
    }
    @:access(hx.widgets.Colour)
    private function set_colour(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        brushRef.ptr.setColour(temp.ref);
        temp.destroy();
        return value;
    }

    public var style(get, set):BrushStyle;
    private function get_style():BrushStyle {
        return brushRef.ptr.getStyle();
    }
    private function set_style(value:BrushStyle):BrushStyle {
        brushRef.ptr.setStyle(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var brushRef(get, null):Pointer<WxBrush>;
    private function get_brushRef():Pointer<WxBrush> {
        return _ref.reinterpret();
    }

}
