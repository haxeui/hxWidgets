package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/hashmap.h")
@:unreflective
@:native("wxStringToStringHashMap")
@:structAccess
extern class StringToStringHashMap {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStringToStringHashMap")     private static function _new():RawPointer<StringToStringHashMap>;
                                                public static inline function createInstance():Pointer<StringToStringHashMap> {
                                                    return Pointer.fromRaw(_new());
                                                }
                                                
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("size")                            public function size():Int;
    @:native("clear")                           public function clear():Void;
    @:native("empty")                           public function empty():Bool;
    
                                                public inline function set(key:WxString, value:WxString):Void {
                                                    untyped __cpp__("(*({0}))[{1}] = {2}", this, key, value);
                                                }
                                                
                                                public inline function get(key:WxString):WxString {
                                                    return untyped __cpp__("(*({0}))[{1}]", this, key);
                                                }
}