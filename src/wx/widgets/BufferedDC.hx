package wx.widgets;

@:include("wx/dcclient.h")
@:unreflective
@:native("cpp::Reference<wxBufferedDC>")
extern class BufferedDC extends BufferedDCImpl {
}

@:include("wx/dcclient.h")
@:unreflective
@:native("wxBufferedDC")
extern class BufferedDCImpl extends MemoryDC {
}
