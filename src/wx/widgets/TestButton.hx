package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/button.h")
@:native("wxButton")
//@:structAccess
extern class TestButton extends TestWindow {
    @:native("new wxButton") private static function _new():RawPointer<TestButton>;
    inline public static function createInstance():Pointer<TestButton> return Pointer.fromRaw(_new());
    
    @:native("Create")                  @:overload(function(parent:Window, id:Int, label:ConstCharStar):Bool {})
    @:native("Create")                  public override function create(parent:Pointer<TestWindow>, id:Int):Bool;
}
