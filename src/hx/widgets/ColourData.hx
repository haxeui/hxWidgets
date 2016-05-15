package hx.widgets;

import cpp.Pointer;
import wx.widgets.ColourData in WxColourData;
import wx.widgets.Colour in WxColour;

class ColourData {

    public function new(colour:Int = -1, chooseFull:Bool = false) {
        if (colour != -1) {
            this.colour = Colour.convertColor(colour);
        }
        else {
            this.colour = -1;
        }
        this.chooseFull = chooseFull;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var colour:Int;
    public var chooseFull:Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxColourData> {
        var p:Pointer<WxColourData> = WxColourData.createInstance();
        if (colour != -1) {
            var color:Pointer<WxColour> = new Colour(colour).createPointer();
            p.ref.setColour(color.ref);
            color.destroy();
        }
        p.ref.setChooseFull(chooseFull);
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
