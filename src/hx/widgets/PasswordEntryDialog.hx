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

            var messageStr = WxString.createInstance(message);
            var captionStr = WxString.createInstance(caption);
            var valueStr = WxString.createInstance(value);
            _ref = WxPasswordEntryDialog.createInstance(Window.toRaw(parent), messageStr.ref, captionStr.ref, valueStr.ref, style);
            messageStr.destroy();
            captionStr.destroy();
            valueStr.destroy();
        }

        super(parent, null);
    }

}
