package hx.widgets;

import cpp.Pointer;
import wx.widgets.MessageDialog in WxMessageDialog;
import wx.widgets.WxString;

class MessageDialog extends Dialog {

    public function new(parent:Window, message:String, caption:String = null, style:Int = 0) {
        if (_ref == null) {
            if (message == null) {
                message = "";
            }
            if (caption == null) {
                caption = "";
            }
            if (style == 0) {
                style = Defs.OK | Defs.CENTRE;
            }

            var messageStr = WxString.fromUTF8(message);
            var captionStr = WxString.fromUTF8(caption);
            _ref = WxMessageDialog.createInstance(Window.toRaw(parent), messageStr, captionStr, style).reinterpret();
        }

        super(parent);
    }

    public static function messageBox(message:String, caption:String, style:Int, parent:Window): Int {
        return WxMessageDialog.messageBox(WxString.fromUTF8(message), WxString.fromUTF8(caption), style, Window.toRaw(parent));
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var messageDialogRef(get, null):Pointer<WxMessageDialog>;
    private function get_messageDialogRef():Pointer<WxMessageDialog> {
        return _ref.reinterpret();
    }

}
