package wx.widgets;


@:include("wx/dataview.h")
extern enum abstract DataViewCellMode(DataViewCellModeImpl) {

    @:native("wxDATAVIEW_CELL_INERT")           var INERT;
    @:native("wxDATAVIEW_CELL_ACTIVATABLE")     var ACTIVATABLE;
    @:native("wxDATAVIEW_CELL_EDITABLE ")       var EDITABLE;

}

@:include("wx/dataview.h")
@:native("cpp::Struct<wxDataViewCellMode, cpp::EnumHandler>")
extern class DataViewCellModeImpl {
}
