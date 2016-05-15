package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dirdlg.h")
@:unreflective
@:native("wxDirDialog")
extern class DirDialog extends Dialog {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDirDialog")         private static function _new(parent:RawPointer<Window>, message:WxString, defaultPath:WxString, style:Int):RawPointer<Window>;
                                        public static inline function createInstance(parent:RawPointer<Window>, message:WxString, defaultPath:WxString, style:Int):Pointer<Window> return Pointer.fromRaw(_new(parent, message, defaultPath, style));
}
