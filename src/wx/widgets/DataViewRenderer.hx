package wx.widgets;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewRenderer")
@:structAccess
extern class DataViewRenderer extends Object {
    @:native("GetAlignment")        public function getAlignment():Int;
    @:native("SetAlignment")        public function setAlignment(align:Int):Void;
}