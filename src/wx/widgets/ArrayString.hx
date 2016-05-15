package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/arrstr.h")
@:unreflective
@:native("wxArrayString")
extern class ArrayString {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxArrayString")           private static function _new():RawPointer<ArrayString>;
                                            public static inline function createInstance():Pointer<ArrayString> {
                                                return Pointer.fromRaw(_new());
                                            }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Add")                         public function add(str:WxString):Int;

}