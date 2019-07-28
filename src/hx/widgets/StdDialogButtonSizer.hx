package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.StdDialogButtonSizer in WxStdDialogButtonSizer;
import wx.widgets.Button in WxButton;

class StdDialogButtonSizer extends BoxSizer {
    public function new(ref:Pointer<WxStdDialogButtonSizer>) {
        _ref = ref.reinterpret();
        super();
    }
    
    @:access(hx.widgets.Button)
    public function addButton(button:Button) {
        var buttonPtr:RawPointer<WxButton> = button.buttonRef.get_raw();
        stdDialogButtonSizerRef.ptr.addButton(buttonPtr);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var stdDialogButtonSizerRef(get, null):Pointer<WxStdDialogButtonSizer>;
    private function get_stdDialogButtonSizerRef():Pointer<WxStdDialogButtonSizer> {
        return _ref.reinterpret();
    }
}