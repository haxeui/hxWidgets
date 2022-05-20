package wx.widgets;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewEvent")
@:structAccess
extern class DataViewEvent extends Event {
    @:native("GetColumn")       public function getColumn():Int;
    @:native("GetSelection")    public function getSelection():Int;
    @:native("GetItem")         public function getItem():DataViewItem;
}