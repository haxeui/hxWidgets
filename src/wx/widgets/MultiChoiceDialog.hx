package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/choicdlg.h")
@:unreflective
@:native("wxMultiChoiceDialog")
extern class MultiChoiceDialog extends Dialog {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMultiChoiceDialog")     private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, choices:ArrayString):RawPointer<Window>;
                                            public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, choices:ArrayString):Pointer<Window> return Pointer.fromRaw(_new(parent, message, caption, choices));
}
