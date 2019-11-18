package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/txtstrm.h")
@:unreflective
@:native("wxTextInputStream")
@:structAccess
extern class TextInputStream {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTextInputStream")   private static function _new(stream:Reference<InputStream>):RawPointer<TextInputStream>;
                                        public static inline function createInstance(stream:Reference<InputStream>):Pointer<TextInputStream> {
                                            return Pointer.fromRaw(_new(stream));
                                        }
                                        
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("ReadLine")              public function readLine():WxString;
}