package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/dcclient.h")
@:unreflective
@:native("cpp::Reference<wxClientDC>")
extern class ClientDC extends ClientDCImpl {
    @:native("new wxClientDC")          public static function createInstance(window:Window):ClientDC;
}

@:include("wx/dcclient.h")
@:unreflective
@:native("wxClientDC")
extern class ClientDCImpl extends WindowDC {
}
