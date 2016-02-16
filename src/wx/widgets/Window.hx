package wx.widgets;

import cpp.ConstCharStar;

//TODO:
import hx.widgets.List.WxWindowList;

@:include("wx/window.h")
@:unreflective
@:native("cpp::Reference<wxWindow>")
extern class Window extends WindowImpl {
    @:native("new wxWindow")            public static function createInstance():Window;
}

@:include("wx/window.h")
@:unreflective
@:native("wxWindow")
extern class WindowImpl extends EvtHandler {
    @:native("Show")                    public function show(value:Bool):Void;
    @:native("Close")                   public function close(force:Bool):Bool;
    @:native("Destroy")                 public function destroy():Bool;
    @:native("DestroyChildren")         public function destroyChildren():Bool;
    @:native("Refresh")                 public function refresh():Void;
    @:native("SetSize")                 public function setSize(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("SetClientSize")           public function setClientSize(width:Int, height:Int):Void;
    @:native("GetClientSize")           public function getClientSize():Size;
    @:native("Move")                    public function move(x:Int, y:Int):Void;
    @:native("FindWindow")              public function findWindowById(id:Int):Window;
    @:native("GetBackgroundColour")     public function getBackgroundColour():Int;
    @:native("SetBackgroundColour")     public function setBackgroundColour(colour:Int):Void;
    @:native("GetWindowStyle")          public function getWindowStyle():Int;
    @:native("SetWindowStyle")          public function setWindowStyle(style:Int):Void;
    @:native("GetSize")                 public function getSize():Size;
    @:native("GetPosition")             public function getPosition():Point;
    @:native("SetVirtualSize")          public function setVirtualSize(width:Int, height:Int):Void;
    @:native("GetVirtualSize")          public function getVirtualSize():Size;
    @:native("GetParent")               public function getParent():Window;
    @:native("GetId")                   public function getId():Int;
    @:native("SetId")                   public function setId(id:Int):Void;
    @:native("GetChildren")             public function getChildren():WxWindowList;
    @:native("SetLabel")                public function setLabel(label:ConstCharStar):Void;
}

@:include("wx/window.h")
@:unreflective
@:native("cpp::Reference<wxWindow::ChildrenRepositioningGuard>")
extern class ChildrenRepositioningGuard extends ChildrenRepositioningGuardImpl {
    @:native("new wxWindow::ChildrenRepositioningGuard") public static function createInstance(win:Window):ChildrenRepositioningGuard;
}

@:include("wx/window.h")
@:unreflective
@:native("wxWindow::ChildrenRepositioningGuard")
extern class ChildrenRepositioningGuardImpl {
}
