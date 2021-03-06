package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import hx.widgets.styles.DialogStyle;
import wx.widgets.Dialog in WxDialog;
import wx.widgets.Sizer in WxSizer;
import wx.widgets.StdDialogButtonSizer in WxStdDialogButtonSizer;
import wx.widgets.WxString;

@:headerCode("
#include <wx/dialog.h>
#undef RegisterClass
")
class Dialog extends TopLevelWindow {

    public function new(parent:Window, title:String = null, style:Int = 0, id:Int = -1) {
        if (style == 0) {
            style = DialogStyle.DEFAULT_DIALOG_STYLE;
        }
        if (_ref == null) {
            _ref = WxDialog.createInstance().reinterpret();
            var str = WxString.fromUTF8(title);
            dialogRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function showModal():Int {
        return dialogRef.ptr.showModal();
    }

    public function endModal(retCode:Int) {
        dialogRef.ptr.endModal(retCode);
    }

    public var isModal(get, null):Bool;
    private function get_isModal():Bool {
        return dialogRef.ptr.isModal();
    }

    public function addMainButtonId(id:Int):Void {
        dialogRef.ptr.addMainButtonId(id);
    }

    public function createSeparatedButtonSizer(flags:Int):Sizer {
        var p:RawPointer<WxSizer> = dialogRef.ptr.createSeparatedButtonSizer(flags);
        var sizer:Sizer = new Sizer();
        sizer._ref = Pointer.fromRaw(p).reinterpret();
        return sizer;
    }
    
    public function createStdDialogButtonSizer(flags:Int):StdDialogButtonSizer {
        var p:RawPointer<WxStdDialogButtonSizer> = dialogRef.ptr.createStdDialogButtonSizer(flags);
        var sizer:StdDialogButtonSizer = new StdDialogButtonSizer(Pointer.fromRaw(p));
        return sizer;
    }
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dialogRef(get, null):Pointer<WxDialog>;
    private function get_dialogRef():Pointer<WxDialog> {
        return _ref.reinterpret();
    }
}
