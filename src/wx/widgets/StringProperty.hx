package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxStringProperty")
@:structAccess
extern class StringProperty extends PGProperty {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStringProperty")    private static function _new(label:WxString, name:WxString, value:WxString):RawPointer<StringProperty>;
                                        public static inline function createInstance(label:WxString, name:WxString, value:WxString):Pointer<StringProperty> {
                                            return Pointer.fromRaw(_new(label, name, value));
                                        }
}