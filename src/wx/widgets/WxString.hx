package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/string.h")
@:unreflective
@:native("wxString")
@:structAccess
extern class WxString {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxString")            private static function _new(s:ConstCharStar):RawPointer<WxString>;
                                        public static inline function createInstance(s:ConstCharStar = null):Pointer<WxString> {
                                            return Pointer.fromRaw(_new(s));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Length")                  public function length():Int;
    @:native("c_str")                   public function c_str():ConstCharStar;

}
