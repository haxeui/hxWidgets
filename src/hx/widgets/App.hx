package hx.widgets;

import cpp.Pointer;
import hx.widgets.Locale;
import wx.widgets.App in WxApp;
import wx.widgets.WxString;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class App extends AppConsole {
    private var locale:Locale;
    
    public static var instance:App;
    
    public function new(setInstance:Bool = true) {
        _ref = WxApp.createInstance().reinterpret();
        if (setInstance) {
            instance = this;
            App.setInstance(this);
        }

        super();
        var systemLanguage = Locale.systemLanguage;
        
        if (systemLanguage != 1) {
            locale = new Locale(systemLanguage);
            Locale.addCatalogLookupPathPrefix("locale");
            locale.addCatalog("wxstd");
            untyped __cpp__("setlocale(LC_NUMERIC, \"C\")");
        }
        //setCLocale();
    }

    public function init():Bool {
        Entry.start(Sys.args());
        return appRef.ptr.init();
    }

    public function run() {
        appRef.ptr.run();
    }

    public function exit() {
        if (locale != null) locale.destroy();
        appRef.ptr.exit();
        Entry.cleanup();
    }

    public static function setInstance(instance:App) {
        WxApp.setInstance(instance.appRef.get_raw());
    }

    public function setCLocale() {
        appRef.ptr.setCLocale();
    }
    
    public var topWindow(get, set):Window;
    private function get_topWindow():Window {
        var p = appRef.ptr.getTopWindow();
        var win:Window = new Window();
        win._ref = Pointer.fromRaw(p).reinterpret();
        return win;
    }
    private function set_topWindow(value:Window):Window {
        return value;
    }

    public var traits(get, null):AppTraits;
    @:access(hx.widgets.AppTraits)
    private function get_traits():AppTraits {
        var p = appRef.ptr.getTraits();
        var appTraits = new AppTraits();
        appTraits._ref = Pointer.fromRaw(p);
        return appTraits;
    }

    public var name(get, set):String;
    private function get_name():String {
        return appRef.ptr.getAppName().toUTF8().data();
    }

    private function set_name(name: String):String {
        appRef.ptr.setAppName(WxString.fromUTF8(name));
        return name;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var appRef(get, null):Pointer<WxApp>;
    private function get_appRef():Pointer<WxApp> {
        return _ref.reinterpret();
    }
}
