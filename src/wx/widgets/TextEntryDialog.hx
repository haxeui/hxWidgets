package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/textdlg.h")
@:unreflective
@:native("wxTextEntryDialog")
@:structAccess
extern class TextEntryDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTextEntryDialog")   private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):RawPointer<TextEntryDialog>;
                                        public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):Pointer<TextEntryDialog> {
                                            return Pointer.fromRaw(_new(parent, message, caption, value, style));
                                        }
}
