package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/choicdlg.h")
@:unreflective
@:native("wxMultiChoiceDialog")
@:structAccess
extern class MultiChoiceDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMultiChoiceDialog")     private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, choices:ArrayString):RawPointer<MultiChoiceDialog>;
                                            public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, choices:ArrayString):Pointer<MultiChoiceDialog> {
                                                return Pointer.fromRaw(_new(parent, message, caption, choices));
                                            }

}
