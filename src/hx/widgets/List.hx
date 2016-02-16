package hx.widgets;

import wx.widgets.Window in WxWindow;

@:include("wx/list.h")
@:unreflective
@:native("wxWindowList::compatibility_iterator")
extern class WxWindowListNodeRef {
    @:native("GetData")            public function getData():WxWindow;
}

@:include("wx/list.h")
@:unreflective
@:structAccess
@:native("wxWindowList")
extern class WxWindowList {
    @:native("GetCount")          public function getCount():Int;
    @:native("Item")              public function item(index:Int):WxWindowListNodeRef;
}

//TODO: not complete - issues with wxObject, wxObjectNode and generics... needs thought. append, getCount works. Cant get the item (or item data)
@:include("wx/list.h")
@:unreflective
@:native("cpp::Reference<wxList>")
extern class WxListRef<T> extends WxList<T>  {
    @:native("new wxList")       public static function createInstance<T>():WxListRef<T>;
}

@:include("wx/list.h")
@:unreflective
@:native("wxList")
extern class WxList<T> {
    @:native("Append")            public function append(object:T):Void;
    @:native("GetCount")          public function getCount():Int;
    @:native("Item")              public function item(index:Int):T;
}
