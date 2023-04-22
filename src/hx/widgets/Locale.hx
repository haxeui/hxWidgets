package hx.widgets;

import wx.widgets.Locale in WxLocale;
import wx.widgets.WxString;

class Locale {
	
    public static function getLanguageName(lang:Int):String {
        var r:WxString = WxLocale.getLanguageName(lang);
        return new String(r.toUTF8().data());
    }
    
    public static function getLanguageCanonicalName(lang:Int):String {
        var r:WxString = WxLocale.getLanguageCanonicalName(lang);
        return new String(r.toUTF8().data());
    }
    
    public static var systemEncodingName(get, null):String;
    private static function get_systemEncodingName():String {
        var r:WxString = WxLocale.getSystemEncodingName();
        return new String(r.toUTF8().data());
    }
    
    public static var systemLanguage(get, null):Int;
    private static function get_systemLanguage():Int {
        return WxLocale.getSystemLanguage();
    }
    
    public static function isAvailable(lang:Int):Bool {
        return WxLocale.isAvailable(lang);
    }
    
} 
