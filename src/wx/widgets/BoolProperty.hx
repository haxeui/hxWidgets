package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxBoolProperty")
@:structAccess
extern class BoolProperty extends PGProperty {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBoolProperty")      private static function _new(label:WxString, name:WxString, value:Bool):RawPointer<BoolProperty>;
                                        public static inline function createInstance(label:WxString, name:WxString, value:Bool):Pointer<BoolProperty> {
                                            return Pointer.fromRaw(_new(label, name, value));
                                        }
}