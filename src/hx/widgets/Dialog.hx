package hx.widgets;

import hx.widgets.styles.DialogStyle;
import wx.widgets.Dialog in WxDialog;

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
            var dialogRef:WxDialog = WxDialog.createInstance();
            dialogRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, title, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = dialogRef;
        }
        
        super(parent, id);
    }
    
    public function showModal():Int {
        return dialogRef.showModal();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dialogRef(get, null):WxDialog;
    private function get_dialogRef():WxDialog {
        return cast _ref;
    }
}