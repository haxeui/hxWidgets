package hx.widgets;

import cpp.Pointer;
import wx.widgets.Brush in WxBrush;
import wx.widgets.Colour in WxColour;

class Brush extends GDIObject {

    public function new(colour:Int = 0x000000) {
        _ref = WxBrush.createInstance().reinterpret();
        this.colour = colour;
    }

    public function destroy() {
        _ref.destroy();
        _ref = null;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var colour(get, set):Int;
    private function get_colour():Int {
        var r = brushRef.ptr.getColour();
        return Colour.copy(Pointer.addressOf(r)).rgb;
    }
    @:access(hx.widgets.Colour)
    private function set_colour(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        brushRef.ptr.setColour(temp.ref);
        temp.destroy();
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
