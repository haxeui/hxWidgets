package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/toplevel.h")
@:unreflective
@:native("wxTopLevelWindow")
extern class TopLevelWindow extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetTitle")                public function setTitle(label:WxString):Void;
    @:native("GetTitle")                public function getTitle():WxString;
}
