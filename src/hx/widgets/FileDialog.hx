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
            _ref = WxFileDialog.createInstance(Window.toRaw(parent), messageStr.ref, defaultDirStr.ref, defaultFileStr.ref, wildcardStr.ref, style).reinterpret();
            messageStr.destroy();
            defaultDirStr.destroy();
            defaultFileStr.destroy();
            wildcardStr.destroy();
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
        var s = WxString.createInstance(value);
        fileDialogRef.ptr.setDirectory(s.ref);
        s.destroy();
        return value;
    }

    public var filename(get, set):String;
    private function get_filename():String {
        var r:WxString = fileDialogRef.ptr.getFilename();
        return new String(r.c_str().asChar());
    }
    private function set_filename(value:String):String {
        var s = WxString.createInstance(value);
        fileDialogRef.ptr.setFilename(s.ref);
        s.destroy();
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
        var s = WxString.createInstance(value);
        fileDialogRef.ptr.setMessage(s.ref);
        s.destroy();
        return value;
    }

    public var path(get, set):String;
    private function get_path():String {
        var r:WxString = fileDialogRef.ptr.getPath();
        return new String(r.c_str().asChar());
    }
    private function set_path(value:String):String {
        var s = WxString.createInstance(value);
        fileDialogRef.ptr.setPath(s.ref);
        s.destroy();
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
        var s = WxString.createInstance(value);
        fileDialogRef.ptr.setWildcard(s.ref);
        s.destroy();
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
