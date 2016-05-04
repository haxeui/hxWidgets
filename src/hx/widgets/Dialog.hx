package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import hx.widgets.styles.DialogStyle;
import wx.widgets.Dialog in WxDialog;
import wx.widgets.WxString;

@:headerCode("
#include <wx/dialog.h>
#undef RegisterClass
")
class Dialog extends Window {
    public function new(parent:Window, title:String, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = DialogStyle.DEFAULT_DIALOG_STYLE;
        }
        if (_ref == null) {
            _ref = WxDialog.createInstance();
            var str = WxString.createInstance(title);
            dialogRef.ptr.create(Window.toRaw(parent), id, str.ref, Point.defaultPosition.ref, Size.defaultSize.ref, style);
            str.destroy();
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function showModal():Int {
        return dialogRef.ptr.showModal();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dialogRef(get, null):Pointer<WxDialog>;
    private function get_dialogRef():Pointer<WxDialog> {
        return Pointer.fromRaw(untyped __cpp__("(wxDialog*)(_ref->get_raw())"));
    }
}