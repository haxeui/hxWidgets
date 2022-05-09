package hx.widgets;

import cpp.Pointer;
import wx.widgets.IntegerValidator in WxIntegerValidator;

@:headerCode("
#include <wx/event.h>
#include <wx/valnum.h>
")
class IntegerValidator extends Validator {
    public function new() {
        if ( _ref == null) {
            _ref = WxIntegerValidator.createInstance().reinterpret();
        }
        
        super();
    }
    
    public var min(null, set):Int;
    private function set_min(value:Int):Int {
        integerValidatorRef.ptr.setMin(value);
        return value;
    }

    public var max(null, set):Int;
    private function set_max(value:Int):Int {
        integerValidatorRef.ptr.setMax(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var integerValidatorRef(get, null):Pointer<WxIntegerValidator>;
    private function get_integerValidatorRef():Pointer<WxIntegerValidator> {
       return _ref.reinterpret();
    }
}