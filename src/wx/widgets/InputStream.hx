package wx.widgets;

@:include("wx/stream.h")
@:unreflective
@:native("wxInputStream")
@:structAccess
extern class InputStream extends StreamBase {
    @:native("CanRead")         public function canRead():Bool;
    @:native("Eof")             public function eof():Bool;
    @:native("GetC")            public function getC():Int;
}
