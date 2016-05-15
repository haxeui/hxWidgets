package hx.widgets;

import cpp.Pointer;
import wx.widgets.FontDialog in WxFontDialog;

class FontDialog extends Dialog {

    public function new(parent:Window) {
        if (_ref == null) {
            _ref = WxFontDialog.createInstance().reinterpret();
            fontDialogRef.ptr.create(Window.toRaw(parent));
        }

        super(parent);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var fontDialogRef(get, null):Pointer<WxFontDialog>;
    private function get_fontDialogRef():Pointer<WxFontDialog> {
        return _ref.reinterpret();
    }

}
