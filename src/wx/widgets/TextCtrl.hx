package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/textctrl.h")
@:unreflective
@:native("cpp::Reference<wxTextCtrl>")
extern class TextCtrl extends TextCtrlImpl {
    @:native("new wxTextCtrl")      public static function createInstance():TextCtrl;
}

@:include("wx/textctrl.h")
@:unreflective
@:native("wxTextCtrl")
extern class TextCtrlImpl extends Control {
    @:native("Create")              @:overload(function(parent:Window, id:Int, value:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("AppendText")          public function appendText(value:ConstCharStar):Void;
    @:native("GetInsertionPoint")   public function getInsertionPoint():Int;
    @:native("SetInsertionPoint")   public function setInsertionPoint(value:Int):Void;
}
