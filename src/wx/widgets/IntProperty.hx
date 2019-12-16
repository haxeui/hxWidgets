package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxIntProperty")
@:structAccess
extern class IntProperty extends PGProperty {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxIntProperty")       private static function _new(label:WxString, name:WxString, value:Int):RawPointer<IntProperty>;
                                        public static inline function createInstance(label:WxString, name:WxString, value:Int):Pointer<IntProperty> {
                                            return Pointer.fromRaw(_new(label, name, value));
                                        }
}