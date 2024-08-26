package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/propgrid/advprops.h")
@:unreflective
@:native("wxColourProperty")
@:structAccess
extern class ColourProperty extends EnumProperty {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxColourProperty")    private static function _new(label:WxString, name:WxString, colour:Colour):RawPointer<ColourProperty>;
                                        public static inline function createInstance(label:WxString, name:WxString, colour:Colour):Pointer<ColourProperty> {
                                            return Pointer.fromRaw(_new(label, name, colour));
                                        }
}