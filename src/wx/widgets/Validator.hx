package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/validate.h")
@:unreflective
@:native("wxValidator")
@:structAccess
extern class Validator extends EvtHandler {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxValidator")     private static function _new():RawPointer<Validator>;
                                    public static inline function createInstance():Pointer<Validator> {
                                        return Pointer.fromRaw(_new());
                                    }
}