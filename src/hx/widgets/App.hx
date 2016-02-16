package hx.widgets;

import wx.widgets.App in WxApp;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class App {
    private var _ref:WxApp;
    
    public function new(setInstance:Bool = true) {
        _ref = WxApp.createInstance();
        if (setInstance == true) {
            App.setInstance(this);
        }
    }
    
    public function init():Bool {
        Entry.start(Sys.args());
        return _ref.init();
    }
    
    public function run() {
        _ref.run();
    }
    
    public function exit() {
        _ref.exit();
        Entry.cleanup();
    }
    
    public static function setInstance(instance:App) {
        WxApp.setInstance(instance._ref);
    }
}
