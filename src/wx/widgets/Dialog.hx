package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/dialog.h")
@:unreflective
@:native("cpp::Reference<wxDialog>")
extern class Dialog extends DialogImpl {
    @:native("new wxDialog")    public static function createInstance():Dialog;
}

@:include("wx/dialog.h")
@:native("wxDialog")
extern class DialogImpl extends Window {
    @:native("Create")                  @:overload(function(parent:Window, id:Int, title:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    @:native("ShowModal")               public function showModal():Int;
}
