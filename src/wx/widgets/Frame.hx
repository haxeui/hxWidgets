package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/frame.h")
@:unreflective
@:native("wxFrame")
extern class Frame extends TopLevelWindow {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFrame") private static function _new():RawPointer<Window>;
    inline public static function createInstance():Pointer<Window> return Pointer.fromRaw(_new());
    
    @:native("Create")              @:overload(function(parent:RawPointer<Window>, id:Int, title:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")              public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetMenuBar")          public function getMenuBar():Pointer<MenuBar>;
    @:native("SetMenuBar")          public function setMenuBar(menuBar:Pointer<MenuBar>):Void;
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