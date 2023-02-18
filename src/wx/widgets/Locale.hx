package wx.widgets;

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
                                    
    
    @:native("wxLocale::GetLanguageName")            public static function getLanguageName(lang:Int):WxString;
    @:native("wxLocale::GetLanguageCanonicalName")   public static function getLanguageCanonicalName(lang:Int):WxString;
    @:native("wxLocale::GetSystemEncodingName")      public static function getSystemEncodingName():WxString;
    @:native("wxLocale::GetSystemLanguage")          public static function getSystemLanguage():Int;
    @:native("wxLocale::IsAvailable")                public static function isAvailable(lang:Int):Bool;
}
