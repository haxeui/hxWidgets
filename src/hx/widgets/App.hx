package hx.widgets;

import cpp.Pointer;
import wx.widgets.App in WxApp;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class App extends AppConsole {

    public function new(setInstance:Bool = true) {
        _ref = WxApp.createInstance().reinterpret();
        if (setInstance) {
            App.setInstance(this);
        }

        super();
    }

    public function init():Bool {
        Entry.start(Sys.args());
        return appRef.ptr.init();
    }

    public function run() {
        appRef.ptr.run();
    }

    public function exit() {
        appRef.ptr.exit();
        Entry.cleanup();
    }

    public static function setInstance(instance:App) {
        WxApp.setInstance(instance.appRef.get_raw());
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var appRef(get, null):Pointer<WxApp>;
    private function get_appRef():Pointer<WxApp> {
        return _ref.reinterpret();
    }

}
