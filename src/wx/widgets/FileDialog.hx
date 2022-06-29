package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/filedlg.h")
@:unreflective
@:native("wxFileDialog")
@:structAccess
extern class FileDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFileDialog")        private static function _new(parent:RawPointer<Window>, message:WxString, defaultDir:WxString, defaultFile:WxString, wildcard:WxString, style:Int):RawPointer<FileDialog>;
                                        public static inline function createInstance(parent:RawPointer<Window>, message:WxString, defaultDir:WxString, defaultFile:WxString, wildcard:WxString, style:Int):Pointer<FileDialog> {
                                            return Pointer.fromRaw(_new(parent, message, defaultDir, defaultFile, wildcard, style));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetCurrentlySelectedFilename")  public function getCurrentlySelectedFilename():WxString;
    @:native("GetDirectory")                  public function getDirectory():WxString;
    @:native("GetFilename")                   public function getFilename():WxString;
    @:native("GetFilenames")                  public function getFilenames(filenames:Reference<ArrayString>):Void;
    @:native("GetFilterIndex")                public function getFilterIndex():Int;
    @:native("GetMessage")                    public function getMessage():WxString;
    @:native("GetPath")                       public function getPath():WxString;
    @:native("GetPaths")                      public function getPaths(paths:ArrayString):Void;
    @:native("GetWildcard")                   public function getWildcard():WxString;
    @:native("SetDirectory")                  public function setDirectory(directory:WxString):Void;
    @:native("SetFilename")                   public function setFilename(filename:WxString):Void;
    @:native("SetFilterIndex")                public function setFilterIndex(index:Int):Void;
    @:native("SetMessage")                    public function setMessage(message:WxString):Void;
    @:native("SetPath")                       public function setPath(path:WxString):Void;
    @:native("SetWildcard")                   public function setWildcard(wildcard:WxString):Void;
}
