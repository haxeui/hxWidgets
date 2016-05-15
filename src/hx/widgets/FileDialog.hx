package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.FileDialogStyle;
import wx.widgets.FileDialog in WxFileDialog;
import wx.widgets.WxString;

class FileDialog extends Dialog {

    public function new(parent:Window, message:String = null, defaultDir:String = null, defaultFile:String = null, wildcard:String = null, style:Int = 0) {
        if (_ref == null) {
            if (message == null) {
                message = "";
            }
            if (defaultDir == null) {
                defaultDir = "";
            }
            if (defaultFile == null) {
                defaultFile = "";
            }
            if (wildcard == null) {
                wildcard = "";
            }
            if (style == 0) {
                style = FileDialogStyle.DEFAULT_STYLE;
            }

            var messageStr = WxString.createInstance(message);
            var defaultDirStr = WxString.createInstance(defaultDir);
            var defaultFileStr = WxString.createInstance(defaultFile);
            var wildcardStr = WxString.createInstance(wildcard);
            _ref = WxFileDialog.createInstance(Window.toRaw(parent), messageStr.ref, defaultDirStr.ref, defaultFileStr.ref, wildcardStr.ref, style);
            messageStr.destroy();
            defaultDirStr.destroy();
            defaultFileStr.destroy();
            wildcardStr.destroy();
        }

        super(parent);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var fileDialogRef(get, null):Pointer<WxFileDialog>;
    private function get_fileDialogRef():Pointer<WxFileDialog> {
        return Pointer.fromRaw(untyped __cpp__("(wxFileDialog*)(_ref->get_raw())"));
    }

}
