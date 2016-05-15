package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.ColourDialog in WxColourDialog;
import wx.widgets.ColourData in WxColourData;

class ColourDialog extends Dialog {
    public function new(parent:Window, colour:Int = -1, chooseFull:Bool = false) {
        if (_ref == null) {
            _ref = WxColourDialog.createInstance();
            var colourData = new ColourData(colour, chooseFull);
            var pointer:Pointer<WxColourData> = colourData.createPointer();
            colourDialogRef.ptr.create(Window.toRaw(parent), pointer.get_raw());
            pointer.destroy();
        }
        
        super(parent);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var colourData(get, null):ColourData;
    private function get_colourData():ColourData {
        var wxColourData:WxColourData = colourDialogRef.ptr.getColourData();
        return new ColourData(wxColourData.getColour().GetRGB(), wxColourData.getChooseFull());
    }

    public var selectedColour(get, null):Int; // bit of sugar
    private function get_selectedColour():Int {
        return colourData.colour;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var colourDialogRef(get, null):Pointer<WxColourDialog>;
    private function get_colourDialogRef():Pointer<WxColourDialog> {
        return Pointer.fromRaw(untyped __cpp__("(wxColourDialog*)(_ref->get_raw())"));
    }
}