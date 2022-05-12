package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Int64;

@:include("wx/datetime.h")
@:unreflective
@:native("wxDateTime")
@:structAccess
@:analyzer(as_var)
extern class WxDateTime {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDateTime")          private static function _new():RawPointer<WxDateTime>;
                                        public static inline function createInstance():Pointer<WxDateTime> {
                                            return Pointer.fromRaw(_new());
                                        }
                                        
    @:native("wxDateTime::Now")         public static function now():WxDateTime;
    @:native("wxDateTime::Today")       public static function today():WxDateTime;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Manipulation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Set")                     public function set(utc:Int):Void;
    @:native("GetValue")                public function getValue():WxLongLong;
}