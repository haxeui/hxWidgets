package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewCtrl")
@:structAccess
extern class DataViewCtrl extends Control {
    @:native("GetColumn")               public function getColumn(pos:Int):RawPointer<DataViewColumn>;
    @:native("GetColumnCount")          public function getColumnCount():Int;
    @:native("Collapse")                public function collapse(item:Reference<DataViewItem>):Void;
    @:native("Expand")                  public function expand(item:Reference<DataViewItem>):Void;
    @:native("GetSelection")            public function getSelection():DataViewItem;
    @:native("Select")                  public function select(item:Reference<DataViewItem>):Void;
}