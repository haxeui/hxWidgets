package wx.widgets;
import cpp.Reference;

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
    /* TODO: doesnt seem to work with git versions of wxWidgets, seems something has changed, need to review
    #if (wxWidgetsVersion >= version("3.1.6"))
    @:native("SetIcon")                 public function setIcon(icon:Reference<BitmapBundle>):Void;
    #else
    */
    @:native("SetIcon")                 public function setIcon(icon:Reference<Icon>):Void;
    //#end
}
