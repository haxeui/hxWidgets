package hx.widgets;

@:headerCode("
#include <wx/menu.h>
")
class ItemKind {
    public static var ITEM_SEPARATOR:Int                = untyped __cpp__("wxITEM_SEPARATOR");
    public static var ITEM_NORMAL:Int                   = untyped __cpp__("wxITEM_NORMAL");
    public static var ITEM_CHECK:Int                    = untyped __cpp__("wxITEM_CHECK");
    public static var ITEM_RADIO:Int                    = untyped __cpp__("wxITEM_RADIO");
    public static var ITEM_DROPDOWN:Int                 = untyped __cpp__("wxITEM_DROPDOWN");
}
