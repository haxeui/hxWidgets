package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.DialogStyle;
import wx.widgets.DirDialog in WxDirDialog;
import wx.widgets.WxString;

class DirDialog extends Dialog {

    public function new(parent:Window, message:String = null, defaultPath:String = null, style:Int = 0) {
        if (_ref == null) {
            if (message == null) {
                message = "";
            }
            if (defaultPath == null) {
                defaultPath = "";
            }
            if (style == 0) {
                style = DialogStyle.DEFAULT_DIALOG_STYLE | DialogStyle.RESIZE_BORDER;
            }

            var messageStr = WxString.createInstance(message);
            var defaultPathStr = WxString.createInstance(defaultPath);
            _ref = WxDirDialog.createInstance(Window.toRaw(parent), messageStr.ref, defaultPathStr.ref, style);
            messageStr.destroy();
            defaultPathStr.destroy();
        }

        super(parent);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dirDialogRef(get, null):Pointer<WxDirDialog>;
    private function get_dirDialogRef():Pointer<WxDirDialog> {
        return _ref.reinterpret();
    }

}
