package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/window.h")
@:native("wxWindow")
extern class TestWindow {
    @:native("new wxWindow") private static function _new():RawPointer<TestWindow>;
    inline public static function createInstance():Pointer<TestWindow> return Pointer.fromRaw(_new());
    
    @:native("Create")                          public function create(parent:Pointer<TestWindow>, id:Int):Bool;
    @:native("SetLabel")                public function setLabel(label:ConstCharStar):Void;
}
