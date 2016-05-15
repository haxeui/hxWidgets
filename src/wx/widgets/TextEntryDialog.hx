package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/textdlg.h")
@:unreflective
@:native("wxTextEntryDialog")
extern class TextEntryDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTextEntryDialog")   private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):RawPointer<Window>;
                                        public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, value:WxString, style:Int):Pointer<Window> {
                                            return Pointer.fromRaw(_new(parent, message, caption, value, style));
                                        }
}
