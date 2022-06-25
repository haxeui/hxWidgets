package hx.widgets;

import cpp.Pointer;
import wx.widgets.DropFilesEvent in WxDropFilesEvent;

class DropFilesEvent extends Event {
    public var numberOfFiles(get, null):Int;
    private function get_numberOfFiles():Int {
        return dropFilesEventRef.ptr.getNumberOfFiles();
    }
    
    public var files(get, null):Array<String>;
    private function get_files():Array<String> {
        var f = [];
        var nativeArray = dropFilesEventRef.ptr.getFiles();
        for (i in 0...numberOfFiles) {
            var s = new String(nativeArray[i].toUTF8().data());
            f.push(s);
        }
        return f;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dropFilesEventRef(get, null):Pointer<WxDropFilesEvent>;
    private function get_dropFilesEventRef():Pointer<WxDropFilesEvent> {
        return _ref.reinterpret();
    }
}