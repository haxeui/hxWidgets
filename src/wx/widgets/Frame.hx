package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/frame.h")
@:unreflective
@:native("wxFrame")
extern class Frame extends Window {
    @:native("new wxFrame") private static function _new():RawPointer<Frame>;
    inline public static function createInstance():Pointer<Frame> return Pointer.fromRaw(_new());
    
    @:native("Create")              @:overload(function(parent:Pointer<Window>, id:Int, label:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              public override function create(parent:Pointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
}

/*
import cpp.ConstCharStar;

@:include("wx/frame.h")
@:unreflective
@:native("cpp::Reference<wxFrame>")
extern class Frame extends FrameImpl {
    @:native("new wxFrame")         public static function createInstance():Frame;
}

@:include("wx/frame.h")
@:unreflective
@:native("wxFrame")
extern class FrameImpl extends Window {
    @:native("Create")              @:overload(function(parent:Window, id:Int, label:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("CreateStatusBar")     public function createStatusBar():Void;
    @:native("SetStatusText")       public function setStatusText(text:ConstCharStar):Void;
    @:native("GetMenuBar")          public function getMenuBar():MenuBar;
    @:native("SetMenuBar")          public function setMenuBar(menuBar:MenuBar):Void;
}
*/