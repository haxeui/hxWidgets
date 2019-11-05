package wx.widgets;

import cpp.RawPointer;

@:include("wx/sizer.h")
@:unreflective
@:native("wxStdDialogButtonSizer")
@:structAccess
extern class StdDialogButtonSizer extends BoxSizer {
    @:native("AddButton")           public function addButton(button:RawPointer<Button>):Void;
    @:native("Realize")             public function realize():Void;

}
