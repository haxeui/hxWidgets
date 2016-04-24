package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/dcclient.h")
@:unreflective
@:native("cpp::Reference<wxPaintDC>")
extern class PaintDC extends PaintDCImpl {
    @:native("new wxPaintDC")          public static function createInstance(window:Window):PaintDC;
}

@:include("wx/dcclient.h")
@:unreflective
@:native("wxPaintDC")
extern class PaintDCImpl extends ClientDC {
}
