package wx.widgets;

@:include("wx/menu.h")
@:native("cpp::Reference<wxItemKind>")
extern class ItemKindType {
}

@:headerCode("#include <wx/menu.h>")
abstract ItemKind(Int) {
    public static var ITEM_SEPARATOR(default, null)          = new ItemKind(untyped __cpp__('::wxITEM_SEPARATOR')); 
    public static var ITEM_NORMAL(default, null)             = new ItemKind(untyped __cpp__('::wxITEM_NORMAL')); 
    public static var ITEM_CHECK(default, null)              = new ItemKind(untyped __cpp__('::wxITEM_CHECK')); 
    public static var ITEM_RADIO(default, null)              = new ItemKind(untyped __cpp__('::wxITEM_RADIO')); 
    public static var ITEM_DROPDOWN(default, null)           = new ItemKind(untyped __cpp__('::wxITEM_DROPDOWN')); 
    
    inline public function new(i:Int) {
        this = i;
    }
    
    @:to @:unreflective
    inline public function toNative():ItemKindType return untyped __cpp__("static_cast<wxItemKind>({0})", this);
}
