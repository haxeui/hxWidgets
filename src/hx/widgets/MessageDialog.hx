package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import hx.widgets.styles.DialogStyle;
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
            
            var messageStr = WxString.createInstance(message);
            var captionStr = WxString.createInstance(caption);
            _ref = WxMessageDialog.createInstance(Window.toRaw(parent), messageStr.ref, captionStr.ref, style);
            messageStr.destroy();
            captionStr.destroy();
        }
        
        super(parent);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var messageDialogRef(get, null):Pointer<WxMessageDialog>;
    private function get_messageDialogRef():Pointer<WxMessageDialog> {
        return Pointer.fromRaw(untyped __cpp__("(wxMessageDialog*)(_ref->get_raw())"));
    }
}