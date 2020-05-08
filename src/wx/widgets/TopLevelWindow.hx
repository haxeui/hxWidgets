package wx.widgets;

@:include("wx/toplevel.h")
@:unreflective
@:native("wxTopLevelWindow")
@:structAccess
extern class TopLevelWindow extends NonOwnedWindow {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetTitle")                public function setTitle(label:WxString):Void;
    @:native("GetTitle")                public function getTitle():WxString;
    @:native("Iconize")                 public function iconize(iconize:Bool = true):Void;
    @:native("IsIconized")              public function isIconized():Bool;
    @:native("Maximize")                public function maximize(maximize:Bool = true):Void;
    @:native("IsMaximized")             public function isMaximized():Bool;
}
