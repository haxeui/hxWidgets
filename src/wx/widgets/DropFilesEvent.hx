package wx.widgets;
import cpp.RawConstPointer;

@:include("wx/event.h")
@:unreflective
@:native("wxDropFilesEvent")
@:structAccess
extern class DropFilesEvent extends Event {
    @:native("GetNumberOfFiles")    public function getNumberOfFiles():Int;
    @:native("GetFiles")            public function getFiles():RawConstPointer<WxString>;
}