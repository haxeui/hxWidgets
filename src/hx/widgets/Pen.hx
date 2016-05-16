package hx.widgets;

import cpp.Pointer;
import wx.widgets.Pen in WxPen;
import wx.widgets.Colour in WxColour;

class Pen extends GDIObject {

    public function new(colour:Int = 0x000000, width:Int = 1) {
        _ref = WxPen.createInstance().reinterpret();
        this.colour = colour;
        this.width = width;
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
        var r = penRef.ptr.getColour();
        return Colour.copy(Pointer.addressOf(r)).rgb;
    }
    @:access(hx.widgets.Colour)
    private function set_colour(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        penRef.ptr.setColour(temp.ref);
        temp.destroy();
        return value;
    }

    public var width(get, set):Int;
    private function get_width():Int {
        return penRef.ptr.getWidth();
    }
    private function set_width(value:Int):Int {
        penRef.ptr.setWidth(value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var penRef(get, null):Pointer<WxPen>;
    private function get_penRef():Pointer<WxPen> {
        return _ref.reinterpret();
    }

}
