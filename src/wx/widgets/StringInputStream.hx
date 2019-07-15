package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/sstream.h")
@:unreflective
@:native("wxStringInputStream")
@:structAccess
extern class StringInputStream extends InputStream {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStringInputStream")     private static function _new(value:WxString):RawPointer<StringInputStream>; //TODO: data should be void*
                                            public static inline function createInstance(value:WxString):Pointer<StringInputStream> {
                                                return Pointer.fromRaw(_new(value));
                                            }
}