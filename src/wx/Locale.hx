package wx;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/intl.h")
@:unreflective
@:native("wxLocale")
@:structAccess
extern class Locale {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxLocale")                    private static function _new(language:Int):RawPointer<Locale>;
                                                public static inline function createInstance(language:Int):Pointer<Locale> {
                                                    return Pointer.fromRaw(_new(language));
                                                }
                                    
    @:native("wxLocale::GetSystemLanguage")     public static function getSystemLanguage():Int;
}