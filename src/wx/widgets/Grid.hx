package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/grid.h")
@:unreflective
@:native("wxGrid")
@:structAccess
extern class Grid extends ScrolledWindow {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxGrid")              private static function _new():RawPointer<Grid>;
                                        public static inline function createInstance():Pointer<Grid> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("CreateGrid")              public function createGrid(numRows:Int, numCols:Int, selectionMode:GridSelectionMode):Bool;
    @:native("SetCellValue")            public function setCellValue(row:Int, col:Int, value:WxString):Void;
    @:native("SetRowSize")              public function setRowSize(row:Int, height:Int):Void;
    @:native("SetColSize")              public function setColSize(col:Int, width:Int):Void;
    @:native("EnableEditing")           public function enableEditing(enable:Bool = true):Void;
    @:native("EnableGridLines")         public function enableGridLines(enable:Bool = true):Void;
}