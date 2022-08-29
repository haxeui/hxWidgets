package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/treectrl.h")
@:unreflective
@:native("wxTreeCtrl")
@:structAccess
extern class TreeCtrl extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTreeCtrl")          private static function _new():RawPointer<TreeCtrl>;
                                        public static inline function createInstance():Pointer<TreeCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("AddRoot")                 public function addRoot(text:WxString, image:Int = -1, selImage:Int = -1):TreeItemId;
    @:native("AppendItem")              public function appendItem(parent:Reference<TreeItemId>, text:WxString, image:Int = -1, selImage:Int = -1):TreeItemId;
    @:native("AssignImageList")         public function assignImageList(imageList:RawPointer<ImageList>):Void;    
    
    @:native("Collapse")                public function collapse(item:Reference<TreeItemId>):Void;    
    @:native("CollapseAll")             public function collapseAll():Void;    
    @:native("CollapseAllChildren")     public function collapseAllChildren(item:Reference<TreeItemId>):Void;    
    
    @:native("Expand")                  public function expand(item:Reference<TreeItemId>):Void;    
    @:native("ExpandAll")               public function expandAll():Void;    
    @:native("ExpandAllChildren")       public function expandAllChildren(item:Reference<TreeItemId>):Void;    
    
    @:native("Delete")                  public function delete(item:Reference<TreeItemId>):Void;    
    @:native("DeleteAllItems")          public function deleteAllItems():Void;    
    @:native("DeleteChildren")          public function deleteChildren(item:Reference<TreeItemId>):Void;    
    
    @:native("GetChildrenCount")        public function getChildrenCount(item:Reference<TreeItemId>, recursively:Bool = true):Void;    
    @:native("GetRootItem")             public function getRootItem():TreeItemId;
    @:native("GetSelection")            public function getSelection():TreeItemId;
    @:native("SelectItem")              public function selectItem(item:Reference<TreeItemId>, select:Bool = true):TreeItemId;
    
    @:native("GetItemText")             public function getItemText(item:Reference<TreeItemId>):WxString;
}