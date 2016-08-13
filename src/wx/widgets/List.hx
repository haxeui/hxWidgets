package wx.widgets;

//TODO: not complete - issues with wxObject, wxObjectNode and generics... needs thought. append, getCount works. Cant get the item (or item data)
@:include("wx/list.h")
@:unreflective
@:native("cpp::Reference<wxList>")
extern class List<T> extends ListImpl<T>  {

    @:native("new wxList")       public static function createInstance<T>():List<T>;

}

@:include("wx/list.h")
@:unreflective
@:native("wxList")
extern class ListImpl<T> {

    @:native("Append")            public function append(object:T):Void;
    @:native("GetCount")          public function getCount():Int;
    @:native("Item")              public function item(index:Int):T;

}

/* //TODO: already in wx.widgets.Window
@:include("wx/list.h")
@:unreflective
@:structAccess
@:native("wxWindowList")
extern class WindowList {

    @:native("GetCount")          public function getCount():Int;
    @:native("Item")              public function item(index:Int):WindowListNode;

}

@:include("wx/list.h")
@:unreflective
@:native("wxWindowList::compatibility_iterator")
extern class WindowListNode {

    @:native("GetData")            public function getData():Window;

}
*/
