package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/listctrl.h")
@:unreflective
@:native("wxListView")
@:structAccess
extern class ListView extends ListCtrl {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxListView")          private static function _new():RawPointer<ListView>;
                                        public static inline function createInstance():Pointer<ListView> {
                                            return Pointer.fromRaw(_new());
                                        }
}