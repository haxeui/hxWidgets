package wx.widgets;

@:include("wx/dcgraph.h")
@:unreflective
@:native("cpp::Reference<wxGCDC>")
extern class GCDC extends GCDCImpl {
    @:native("new wxGCDC")          public static function createInstance(windowDC:WindowDC):GCDC;
}

@:include("wx/dcgraph.h")
@:unreflective
@:native("wxGCDC")
extern class GCDCImpl extends DC {
}
