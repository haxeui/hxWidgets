package wx.widgets;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewItem")
@:structAccess
extern class DataViewItem {
    @:native("GetID")           public function getId():RawPointer<cpp.Void>;
    @:native("IsOk")            public function isOK():Bool;
}