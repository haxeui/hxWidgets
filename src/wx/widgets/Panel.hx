package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/panel.h")
@:unreflective
@:native("wxPanel")
extern class Panel extends Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPanel")             private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());
}

/*
@:include("wx/panel.h")
@:unreflective
@:native("cpp::Reference<wxPanel>")
extern class Panel extends PanelImpl {
    @:native("new wxPanel")     public static function createInstance():Panel;
}

@:include("wx/panel.h")
@:unreflective
@:native("wxPanel")
extern class PanelImpl extends Window {
}
*/