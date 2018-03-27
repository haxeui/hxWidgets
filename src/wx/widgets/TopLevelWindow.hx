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

}
