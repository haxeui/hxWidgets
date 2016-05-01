package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/control.h")
@:unreflective
@:native("wxControl")
extern class Control extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxControl")           private static function _new():RawPointer<Control>;
                                        public static inline function createInstance():Pointer<Control> return Pointer.fromRaw(_new());
                                                
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetLabel")                public function setLabel(label:WxString):Void;
    @:native("GetLabel")                public function getLabel():WxString;
}

/*
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
*/