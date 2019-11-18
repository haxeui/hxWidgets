package wx.widgets;

@:include("wx/stream.h")
@:unreflective
@:native("wxStreamBase")
@:structAccess
extern class StreamBase {
    @:native("IsOk")            public function isOk():Bool;
    @:native("GetSize")         public function getSize():Int;
}
