package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;
import wx.widgets.Vector.VariantVector;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewListCtrl")
@:structAccess
extern class DataViewListCtrl extends DataViewCtrl {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewListCtrl")  private static function _new():RawPointer<DataViewListCtrl>;
                                        public static inline function createInstance():Pointer<DataViewListCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }
                                        
    @:native("AppendColumn")            public function appendColumn(column:RawPointer<DataViewColumn>):Void;
    @:native("AppendToggleColumn")      public function appendToggleColumn(label:WxString):Void;
    @:native("AppendTextColumn")        public function appendTextColumn(label:WxString):Void;
    @:native("AppendProgressColumn")    public function appendProgressColumn(label:WxString):Void;
    
    @:native("AppendBitmapColumn")      public function appendBitmapColumn(label:WxString, modelColumn:Int):Void;
    
    @:native("AppendItem")              public function appendItem(values:VariantVector):Void;
    
    @:native("DeleteAllItems")          public function deleteAllItems():Void;
    @:native("DeleteItem")              public function deleteItem(row:Int):Void;
    @:native("GetItemCount")            public function getItemCount():Int;
    
    @:native("GetValue")                public function getValue(value:Reference<Variant>, row:Int, col:Int):Void;
    @:native("SetValue")                public function setValue(value:Reference<Variant>, row:Int, col:Int):Void;
    @:native("GetTextValue")            public function getTextValue(row:Int, col:Int):WxString;
    @:native("SetTextValue")            public function setTextValue(value:WxString, row:Int, col:Int):Void;
}