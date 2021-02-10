package hx.widgets;

import cpp.Pointer;
import wx.widgets.Grid in WxGrid;
import wx.widgets.WxString;

class Grid extends ScrolledWindow {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxGrid.createInstance().reinterpret();
            gridRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    public function createGrid(rows:Int, cols:Int):Bool {
        return gridRef.ptr.createGrid(rows, cols, GridSelectionMode.Rows);
    }
    
    public function setCellValue(row:Int, col:Int, value:String) {
        var s = WxString.fromUTF8(value);
        gridRef.ptr.setCellValue(row, col, s);
    }
    
    public function setRowSize(row:Int, height:Int) {
        gridRef.ptr.setRowSize(row, height);
    }
    
    public function setColSize(col:Int, width:Int) {
        gridRef.ptr.setColSize(col, width);
    }
    
    public var enableEditing(null, set):Bool;
    private function set_enableEditing(value:Bool):Bool {
        gridRef.ptr.enableEditing(value);
        return value;
    }
    
    public var enableGridLines(null, set):Bool;
    private function set_enableGridLines(value:Bool):Bool {
        gridRef.ptr.enableGridLines(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var gridRef(get, null):Pointer<WxGrid>;
    private function get_gridRef():Pointer<WxGrid> {
       return _ref.reinterpret();
    }
}