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

            var messageStr = WxString.fromUTF8(message);
            var defaultDirStr = WxString.fromUTF8(defaultDir);
            var defaultFileStr = WxString.fromUTF8(defaultFile);
            var wildcardStr = WxString.fromUTF8(wildcard);
            _ref = WxFileDialog.createInstance(Window.toRaw(parent), messageStr, defaultDirStr, defaultFileStr, wildcardStr, style).reinterpret();
        }

        super(parent);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var currentlySelectedFilename(get, null):String;
    private function get_currentlySelectedFilename():String {
        var r:WxString = fileDialogRef.ptr.getCurrentlySelectedFilename();
        return new String(r.c_str().asChar());
    }

    public var directory(get, set):String;
    private function get_directory():String {
        var r:WxString = fileDialogRef.ptr.getDirectory();
        return new String(r.c_str().asChar());
    }
    private function set_directory(value:String):String {
        var s = WxString.fromUTF8(value);
        fileDialogRef.ptr.setDirectory(s);
        return value;
    }

    public var filename(get, set):String;
    private function get_filename():String {
        var r:WxString = fileDialogRef.ptr.getFilename();
        return new String(r.c_str().asChar());
    }
    private function set_filename(value:String):String {
        var s = WxString.fromUTF8(value);
        fileDialogRef.ptr.setFilename(s);
        return value;
    }

    // TODO:
    /*
    public function getFilenames():Array<String> {
        return null;
    }
    */

    public var filterIndex(get, set):Int;
    private function get_filterIndex():Int {
        return fileDialogRef.ptr.getFilterIndex();
    }
    private function set_filterIndex(value:Int):Int {
        fileDialogRef.ptr.setFilterIndex(value);
        return value;
    }

    public var message(get, set):String;
    private function get_message():String {
        var r:WxString = fileDialogRef.ptr.getMessage();
        return new String(r.c_str().asChar());
    }
    private function set_message(value:String):String {
        var s = WxString.fromUTF8(value);
        fileDialogRef.ptr.setMessage(s);
        return value;
    }

    public var path(get, set):String;
    private function get_path():String {
        var r:WxString = fileDialogRef.ptr.getPath();
        return new String(r.c_str().asChar());
    }
    private function set_path(value:String):String {
        var s = WxString.fromUTF8(value);
        fileDialogRef.ptr.setPath(s);
        return value;
    }

    // TODO:
    /*
    public function getPaths():Array<String> {
        return null;
    }
    */

    public var wildcard(get, set):String;
    private function get_wildcard():String {
        var r:WxString = fileDialogRef.ptr.getWildcard();
        return new String(r.c_str().asChar());
    }
    private function set_wildcard(value:String):String {
        var s = WxString.fromUTF8(value);
        fileDialogRef.ptr.setWildcard(s);
        return value;
    }



    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var fileDialogRef(get, null):Pointer<WxFileDialog>;
    private function get_fileDialogRef():Pointer<WxFileDialog> {
        return _ref.reinterpret();
    }

}
