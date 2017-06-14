package hx.widgets;

import wx.widgets.PasswordEntryDialog in WxPasswordEntryDialog;
import wx.widgets.WxString;

class PasswordEntryDialog extends TextEntryDialog {

    public function new(parent:Window, message:String, caption:String = null, value:String = null, style:Int = 0) {
        if (_ref == null) {
            if (message == null) {
                message = "";
            }
            if (caption == null) {
                caption = "";
            }
            if (value == null) {
                value = "";
            }
            if (style == 0) {
                style = Defs.OK | Defs.CANCEL | Defs.CENTRE;
            }

            var messageStr = WxString.fromUTF8(message);
            var captionStr = WxString.fromUTF8(caption);
            var valueStr = WxString.fromUTF8(value);
            _ref = WxPasswordEntryDialog.createInstance(Window.toRaw(parent), messageStr, captionStr, valueStr, style).reinterpret();
        }

        super(parent, null);
    }

}
