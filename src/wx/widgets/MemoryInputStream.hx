package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/mstream.h")
@:unreflective
@:native("cpp::Reference<wxMemoryInputStream>")
extern class MemoryInputStream extends MemoryInputStreamImpl {
    @:native("new wxMemoryInputStream")     public static function createInstance(data:ConstCharStar, len:Int):MemoryInputStream;
}

@:include("wx/mstream.h")
@:unreflective
@:native("wxMemoryInputStream")
extern class MemoryInputStreamImpl {
}
