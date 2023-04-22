package wx.widgets;

import cpp.RawPointer;
import cpp.Reference;

@:include("wx/clipbrd.h")
@:unreflective
@:native("wxClipboard")
@:structAccess
extern class Clipboard extends Object {
    @:native("Open")            public function open():Bool;
    @:native("Close")           public function close():Void;
    @:native("GetData")         public function getData(data:Reference<DataObject>):Bool;
    @:native("SetData")         public function setData(data:RawPointer<DataObject>):Bool;
}