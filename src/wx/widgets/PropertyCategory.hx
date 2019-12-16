package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxPropertyCategory")
@:structAccess
extern class PropertyCategory extends PGProperty {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPropertyCategory")  private static function _new(label:WxString, name:WxString):RawPointer<PropertyCategory>;
                                        public static inline function createInstance(label:WxString, name:WxString):Pointer<PropertyCategory> {
                                            return Pointer.fromRaw(_new(label, name));
                                        }
}