package wx.widgets;

@:include("wx/dcmemory.h")
@:unreflective
@:native("cpp::Reference<wxMemoryDC>")
extern class MemoryDC extends MemoryDCImpl {
}

@:include("wx/dcmemory.h")
@:unreflective
@:native("wxMemoryDC")
extern class MemoryDCImpl extends DC {
}
