package hx.widgets;

import cpp.Pointer;
import wx.widgets.Validator in WxValidator;

class Validator extends EvtHandler {
    public function new(create:Bool = true) {
        if (create == true && _ref == null) {
            _ref = WxValidator.createInstance().reinterpret();
        }

        super();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var validatorRef(get, null):Pointer<WxValidator>;
    private function get_validatorRef():Pointer<WxValidator> {
       return _ref.reinterpret();
    }
}