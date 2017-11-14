package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("custom/hardbreakwrapper.h")
//@:unreflective
@:native("wxHardBreakWrapper")
//@:structAccess
extern class HardBreakWrapper {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxHardBreakWrapper")      private static function _new(win:RawPointer<Window>, text:WxString, maxWidth:Int):RawPointer<HardBreakWrapper>;
                                            public static inline function createInstance(win:RawPointer<Window>, text:WxString, maxWidth:Int):Pointer<HardBreakWrapper> {
                                                return Pointer.fromRaw(_new(win, text, maxWidth));
                                            }
    @:native("GetWrapped")                  public function getWrapped():WxString;
}
