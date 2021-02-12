package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewCtrl")
@:structAccess
extern class DataViewCtrl extends Control {
    @:native("GetColumn")               public function getColumn(pos:Int):RawPointer<DataViewColumn>;
}