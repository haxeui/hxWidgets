package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxEnumProperty")
@:structAccess
extern class EnumProperty extends PGProperty {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxEnumProperty")      private static function _new(label:WxString, name:WxString, choices:Reference<PGChoices>):RawPointer<EnumProperty>;
                                        public static inline function createInstance(label:WxString, name:WxString, choices:Reference<PGChoices>):Pointer<EnumProperty> {
                                            return Pointer.fromRaw(_new(label, name, choices));
                                        }
}