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

            var messageStr = WxString.fromUTF8(message);
            var defaultPathStr = WxString.fromUTF8(defaultPath);
            _ref = WxDirDialog.createInstance(Window.toRaw(parent), messageStr, defaultPathStr, style).reinterpret();
        }

        super(parent);
    }

    public var path(get, set):String;
    private function get_path():String {
        var r:WxString = dirDialogRef.ptr.getPath();
        return new String(r.toUTF8().data());
    }
    private function set_path(value:String):String {
        var s = WxString.fromUTF8(value);
        dirDialogRef.ptr.setPath(s);
        return value;
    }

    #if (wxWidgetsVersion >= version("3.1.4")) 
    public var paths(get, never):Array<String>;
    private function get_paths():Array<String> {
        var wxArray = new ArrayString();
        dirDialogRef.ptr.getPaths(@:privateAccess wxArray.arraystringRef.ref);
        var array = new ArrayString();
        var r = wxArray.toArray();
        wxArray.destroy();
        return r;
    }
    #end
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dirDialogRef(get, null):Pointer<WxDirDialog>;
    private function get_dirDialogRef():Pointer<WxDirDialog> {
        return _ref.reinterpret();
    }

}
