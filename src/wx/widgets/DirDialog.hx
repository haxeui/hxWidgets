package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/wx.h")
@:unreflective
@:native("wxDirDialog")
@:structAccess
extern class DirDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDirDialog")         private static function _new(parent:RawPointer<Window>, message:WxString, defaultPath:WxString, style:Int):RawPointer<DirDialog>;
                                        public static inline function createInstance(parent:RawPointer<Window>, message:WxString, defaultPath:WxString, style:Int):Pointer<DirDialog> {
                                            return Pointer.fromRaw(_new(parent, message, defaultPath, style));
                                        }

    @:native("GetPath")            public function getPath():WxString;
    @:native("SetPath")            public function setPath(path:WxString):Void;
    #if (wxWidgetsVersion >= version("3.1.4")) 
    @:native("GetPaths")            public function getPaths(paths:Reference<ArrayString>):WxString;
    #end
}
