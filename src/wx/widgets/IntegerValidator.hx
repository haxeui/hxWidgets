package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;


@:unreflective
@:native("wxIntegerValidator<int>")
@:structAccess
extern class IntegerValidator extends Validator {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxIntegerValidator<int>")      private static function _new():RawPointer<IntegerValidator>;
                                            public static inline function createInstance():Pointer<IntegerValidator> {
                                                return Pointer.fromRaw(_new());
                                            }
                                            
    @:native("SetMin")                      public function setMin(value:Int):Void;
    @:native("SetMax")                      public function setMax(value:Int):Void;
}