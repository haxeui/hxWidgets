package hx.widgets;

import wx.widgets.Locale in WxLocale;
import wx.widgets.WxString;
import cpp.Pointer;

class Locale extends Object {

    public function new(language:Int) {
        if (_ref == null) {
            _ref = WxLocale.createInstance(language).reinterpret();
        }
    }
	
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

    public static function addCatalogLookupPathPrefix(prefix:String):Void {
        var s = WxString.createInstance(prefix);
        WxLocale.addCatalogLookupPathPrefix(s.ref);
        s.destroy();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Member functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////

    public function addCatalog(domain:String):Bool {
        var s = WxString.createInstance(domain);
        var b = localeRef.ptr.addCatalog(s.ref);
        s.destroy();
        return b;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var localeRef(get, null):Pointer<WxLocale>;
    private function get_localeRef():Pointer<WxLocale> {
        return _ref.reinterpret();
    }

} 
