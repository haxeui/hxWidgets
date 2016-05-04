package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/menu.h")
@:unreflective
@:native("wxMenuItem")
extern class MenuItem {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMenuItem")          private static function _new(parent:RawPointer<Menu>, id:Int = 0, text:ConstCharStar = null, helpString:ConstCharStar = null):RawPointer<MenuItem>;
                                        public static inline function createInstance(parent:RawPointer<Menu>, id:Int = 0, text:ConstCharStar = null, helpString:ConstCharStar= null):Pointer<MenuItem> return Pointer.fromRaw(_new(parent, id, text, helpString));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Check")                   public function check(check:Bool = true):Void;
    @:native("SetBitmap")               public function setBitmap(bitmap:Bitmap):Void;
}
