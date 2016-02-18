package wx.widgets;

@:include("wx/menu.h")
@:unreflective
@:native("int")
extern class ItemKind {
    @:native("wxITEM_SEPARATOR") public static var ITEM_SEPARATOR:ItemKind;
    @:native("wxITEM_NORMAL")    public static var ITEM_NORMAL:ItemKind;
    @:native("wxITEM_CHECK")     public static var ITEM_CHECK:ItemKind;
    @:native("wxITEM_RADIO")     public static var ITEM_RADIO:ItemKind;
    @:native("wxITEM_DROPDOWN")  public static var ITEM_DROPDOWN:ItemKind;
}
