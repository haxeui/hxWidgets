package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/variant.h")
@:unreflective
@:native("wxVariant")
extern class Variant extends Object {
    @:native("wxVariant")       @:overload(function(value:Bool):Variant {})
    @:native("wxVariant")       @:overload(function(value:Float):Variant {})
    @:native("wxVariant")       @:overload(function(value:WxString):Variant {})
    @:native("wxVariant")       @:overload(function(value:RawPointer<Object>):Variant {})
    @:native("wxVariant")       public static function create(value:Int):Variant;
    
    @:native("new wxVariant")   private static function _fromInt(value:Int):RawPointer<Variant>;
                                public static inline function fromInt(value:Int):Pointer<Variant> {
                                    return Pointer.fromRaw(_fromInt(value));
                                }
    @:native("new wxVariant")   private static function _fromBool(value:Bool):RawPointer<Variant>;
                                public static inline function fromBool(value:Bool):Pointer<Variant> {
                                    return Pointer.fromRaw(_fromBool(value));
                                }
    @:native("new wxVariant")   private static function _fromFloat(value:Float):RawPointer<Variant>;
                                public static inline function fromFloat(value:Float):Pointer<Variant> {
                                    return Pointer.fromRaw(_fromFloat(value));
                                }
    @:native("new wxVariant")   private static function _fromString(value:WxString):RawPointer<Variant>;
                                public static inline function fromString(value:WxString):Pointer<Variant> {
                                    return Pointer.fromRaw(_fromString(value));
                                }

    @:native("new wxVariant")   private static function _empty():RawPointer<Variant>;
                                public static inline function empty():Pointer<Variant> {
                                    return Pointer.fromRaw(_empty());
                                }

    @:native("GetType")         public function getType():WxString;
                                
    @:native("GetBool")         public function getBool():Bool;
    @:native("GetDouble")       public function getDouble():Float;
    @:native("GetLong")         public function getLong():Int;
    @:native("GetString")       public function getString():WxString;
}