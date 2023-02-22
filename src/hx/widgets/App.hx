package hx.widgets;

import cpp.Pointer;
import wx.widgets.Locale;
import wx.widgets.App in WxApp;
import wx.widgets.WxString;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class App extends AppConsole {
    private var _locale:Pointer<Locale>;
    
    public static var instance:App;
    
    public function new(setInstance:Bool = true) {
        _ref = WxApp.createInstance().reinterpret();
        if (setInstance) {
            instance = this;
            App.setInstance(this);
        }

        super();
        var systemLanguage = Locale.getSystemLanguage();
        if (systemLanguage != 1) {
            _locale = Locale.createInstance(systemLanguage);
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
        _locale.destroy();
        appRef.ptr.exit();
        Entry.cleanup();
    }

    public static function setInstance(instance:App) {
        WxApp.setInstance(instance.appRef.get_raw());
    }

    public function setCLocale() {
        appRef.ptr.setCLocale();
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
