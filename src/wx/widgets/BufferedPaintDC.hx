package wx.widgets;

@:include("wx/dcbuffer.h")
@:unreflective
@:native("cpp::Reference<wxBufferedPaintDC>")
extern class BufferedPaintDC extends BufferedPaintDCImpl {
    @:native("new wxBufferedPaintDC")          public static function createInstance(window:Window):BufferedPaintDC;
}

@:include("wx/dcbuffer.h")
@:unreflective
@:native("wxBufferedPaintDC")
extern class BufferedPaintDCImpl extends BufferedDC {
}
