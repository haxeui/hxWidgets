package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.Menu.WxMenuRef;
import hx.widgets.Bitmap.WxBitmapRef;

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

@:access(hx.widgets.Menu)
@:access(hx.widgets.Bitmap)
class MenuItem {
    private var _ref:WxMenuItemRef;
    
    public function new(parent:Menu = null, text:String = null, kind:Int = -1, id:Int = -1) {
        if (parent != null) {
            if (kind == -1) {
                kind = ItemKind.ITEM_NORMAL;
            }
            _ref = WxMenuItemRef.createInstance(parent.menuRef, id, text, "", kind);
        }
    }
    
    public function check(check:Bool = true) {
        if (_ref != null) {
            _ref.check(check);
        }
    }
    
    public function setBitmap(bitmap:Bitmap) {
        _ref.setBitmap(bitmap._ref);
    }
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuItem*")
extern class WxMenuItemRef extends WxMenuItem {
    @:native("new wxMenuItem")      public static function createInstance(parent:WxMenuRef, id:Int = 0, text:ConstCharStar, helpString:ConstCharStar, kind:Int):WxMenuItemRef;
}

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuItem")
extern class WxMenuItem {
    @:native("Check")               public function check(check:Bool = true):Void;
    @:native("SetBitmap")           public function setBitmap(bitmap:WxBitmapRef):Void;
}
