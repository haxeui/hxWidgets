package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.ColourDialog in WxColourDialog;

class ColourDialog extends Dialog {
    public function new(parent:Window) {
        if (_ref == null) {
            _ref = WxColourDialog.createInstance();
            colourDialogRef.ptr.create(Window.toRaw(parent));
        }
        
        super(parent);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var colourDialogRef(get, null):Pointer<WxColourDialog>;
    private function get_colourDialogRef():Pointer<WxColourDialog> {
        return Pointer.fromRaw(untyped __cpp__("(wxColourDialog*)(_ref->get_raw())"));
    }
}