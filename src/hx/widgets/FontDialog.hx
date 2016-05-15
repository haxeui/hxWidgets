package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.FontDialog in WxFontDialog;

class FontDialog extends Dialog {
    public function new(parent:Window) {
        if (_ref == null) {
            _ref = WxFontDialog.createInstance();
            fontDialogRef.ptr.create(Window.toRaw(parent));
        }
        
        super(parent);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var fontDialogRef(get, null):Pointer<WxFontDialog>;
    private function get_fontDialogRef():Pointer<WxFontDialog> {
        return Pointer.fromRaw(untyped __cpp__("(wxFontDialog*)(_ref->get_raw())"));
    }
}