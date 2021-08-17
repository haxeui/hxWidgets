package wx.widgets;

@:include("wx/menu.h")
@:enum extern abstract ItemKind(ItemKindImpl) {

    @:native("wxITEM_SEPARATOR")   var ITEM_SEPARATOR;
    @:native("wxITEM_NORMAL")      var ITEM_NORMAL;
    @:native("wxITEM_CHECK")       var ITEM_CHECK;
    @:native("wxITEM_RADIO")       var ITEM_RADIO;
    @:native("wxITEM_DROPDOWN")    var ITEM_DROPDOWN;

}

@:include("wx/menu.h")
@:native("cpp::Struct<wxItemKind, cpp::EnumHandler>")
extern class ItemKindImpl {
}
