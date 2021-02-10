package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/vector.h")
@:unreflective
@:native("wxVector")
@:structAccess
extern class Vector<T> {
    @:native("size")            public function size():Int;
    @:native("push_back")       public function pushBack(value:T):Void;
    @:native("clear")           public function clear():Void;
    @:native("at")              public function at(index:Int):T;
}

@:include("wx/vector.h")
@:unreflective
@:native("wxVector<int>")
@:structAccess
extern class IntVector extends Vector<Int> {
    @:native('wxVector<int>') public static function create():IntVector;
}

@:include("wx/vector.h")
@:include("wx/variant.h")
@:unreflective
@:native("wxVector<wxVariant>")
@:structAccess
extern class VariantVector extends Vector<Variant> {
    @:native('wxVector<wxVariant>')         public static function create():VariantVector;
    @:native("new wxVector<wxVariant>")     private static function _new():RawPointer<VariantVector>;
                                            public static inline function createInstance():Pointer<VariantVector> {
                                                return Pointer.fromRaw(_new());
                                            }
}