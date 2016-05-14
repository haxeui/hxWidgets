package hx.widgets;

import cpp.Pointer;
import wx.widgets.App in WxApp;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class App {

    private var _ref:Pointer<WxApp>;

    public function new(setInstance:Bool = true) {
        _ref = WxApp.createInstance();
        if (setInstance == true) {
            App.setInstance(this);
        }
    }

    public function init():Bool {
        Entry.start(Sys.args());
        return _ref.ptr.init();
    }

    public function run() {
        _ref.ptr.run();
    }

    public function exit() {
        _ref.ptr.exit();
        Entry.cleanup();
    }

    public static function setInstance(instance:App) {
        WxApp.setInstance(instance._ref.get_raw());
    }

}
