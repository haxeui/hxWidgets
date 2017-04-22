package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/textdlg.h")
@:unreflective
@:native("wxPasswordEntryDialog")
@:structAccess
extern class PasswordEntryDialog extends TextEntryDialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPasswordEntryDialog")   private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):RawPointer<PasswordEntryDialog>;
                                            public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):Pointer<PasswordEntryDialog> {
                                                return Pointer.fromRaw(_new(parent, message, caption, value, style));
                                            }
}
