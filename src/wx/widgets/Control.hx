package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/control.h")
@:unreflective
@:native("cpp::Reference<wxControl>")
extern class Control extends ControlImpl {
    @:native("new wxControl")    public static function createInstance():Control;
}

@:include("wx/control.h")
@:unreflective
@:native("wxControl")
extern class ControlImpl extends Window {
    @:native("SetLabel")                public function setLabel(label:ConstCharStar):Void;
    @:native("GetLabel")                public function getLabel():ConstCharStar;
}
