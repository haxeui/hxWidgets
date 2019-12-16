package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxPGChoices")
@:structAccess
extern class PGChoices {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPGChoices")     private static function _new():RawPointer<BoolProperty>;
                                    public static inline function createInstance():Pointer<BoolProperty> {
                                        return Pointer.fromRaw(_new());
                                    }
                                    
    @:native("Add")                 public function add(label:WxString, value:Int):Void;
}