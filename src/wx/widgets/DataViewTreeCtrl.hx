package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/dataview.h")
@:unreflective
@:native("wxDataViewTreeCtrl")
@:structAccess
extern class DataViewTreeCtrl extends DataViewCtrl  {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDataViewTreeCtrl")          private static function _new():RawPointer<DataViewTreeCtrl>;
                                                public static inline function createInstance():Pointer<DataViewTreeCtrl> {
                                                    return Pointer.fromRaw(_new());
                                                }
                                                
    @:native("AppendContainer")                 public function appendContainer(parent:Reference<DataViewItem>, text:WxString, icon:Int = -1, expanded:Int = -1):DataViewItem;
    @:native("AppendItem")                      public function appendItem(parent:Reference<DataViewItem>, text:WxString, icon:Int = -1):DataViewItem;
    @:native("SetImageList")                    public function setImageList(imageList:RawPointer<ImageList>):Void;    
    @:native("GetItemText")                     public function getItemText(item:Reference<DataViewItem>):WxString;    
    @:native("SetItemText")                     public function setItemText(item:Reference<DataViewItem>, text:WxString):Void;    
    @:native("SetItemIcon")                     public function setItemIcon(item:Reference<DataViewItem>, icon:Reference<Icon>):Void;    
    @:native("DeleteAllItems")                  public function deleteAllItems():Void;    
    @:native("DeleteChildren")                  public function deleteChildren(item:Reference<DataViewItem>):Void;    
    @:native("DeleteItem")                      public function deleteItem(item:Reference<DataViewItem>):Void;    
    @:native("IsContainer")                     public function isContainer(item:Reference<DataViewItem>):Bool;    
    @:native("GetChildCount")                   public function getChildCount(parent:Reference<DataViewItem>):Int;    
    @:native("GetNthChild")                     public function getNthChild(parent:Reference<DataViewItem>, pos:Int):DataViewItem;    
    @:native("GetIndent")                       public function getIndent():Int;    
    @:native("SetIndent")                       public function setIndent(indent:Int):Void;    
}