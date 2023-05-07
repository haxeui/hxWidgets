package wx.widgets;

@:include("wx/grid.h")
extern enum abstract GridSelectionMode(GridSelectionModeImpl)  {
    @:native("wxGrid::wxGridSelectCells")           var Cells;
    @:native("wxGrid::wxGridSelectRows")            var Rows;
    @:native("wxGrid::wxGridSelectColumns")         var Columns;
    @:native("wxGrid::wxGridSelectRowsOrColumns")   var RowsOrColumns;
}

@:include("wx/grid.h")
@:native("cpp::Struct<wxGridSelectionModes, cpp::EnumHandler>")
extern class GridSelectionModeImpl {
}
