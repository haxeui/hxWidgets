package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/listctrl.h")
@:unreflective
@:native("wxListCtrl")
@:structAccess
extern class ListCtrl extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxListCtrl")              private static function _new():RawPointer<ListCtrl>;
                                            public static inline function createInstance():Pointer<ListCtrl> {
                                                return Pointer.fromRaw(_new());
                                            }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("InsertItem")                  public function insertItem(info:Reference<ListItem>):Int;
    @:native("SetItem")                     public function setItem(info:Reference<ListItem>):Bool;
    @:native("SetItemState")                public function setItemState(item:Int, state:Int, stateMask:Int):Bool;
    @:native("GetImageList")                public function getImageList(which:Int):RawPointer<ImageList>;
    @:native("SetImageList")                public function setImageList(imageList:RawPointer<ImageList>, which:Int):Void;
    @:native("GetItemCount")                public function getItemCount():Int;
    @:native("GetItem")                     public function getItem(info:Reference<ListItem>):Bool;
    @:native("GetSelectedItemCount")        public function getSelectedItemCount():Int;
    @:native("AppendColumn")                public function appendColumn(heading:WxString):Int;
    @:native("EnableAlternateRowColours")   public function enableAlternateRowColours(enable:Bool):Void;
    @:native("GetNextItem")                 public function getNextItem(item:Int, geometry:Int, state:Int):Int;
    @:native("DeleteItem")                  public function deleteItem(item:Int):Bool;
    @:native("DeleteAllItems")              public function deleteAllItems():Bool;
    @:native("EnsureVisible")               public function ensureVisible(item:Int):Bool;
}