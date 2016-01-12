package hx.widgets;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
class App {
    private var _ref:WxAppRef;
    
    public function new(setInstance:Bool = true) {
        _ref = WxAppRef.createInstance();
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

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
@:native("cpp.Reference<wxApp>")
extern class WxAppRef extends WxApp {
    @:native("new wxApp")               public static function createInstance():WxAppRef;
}

@:native("wxApp")
extern class WxApp {
    @:native("wxApp::SetInstance")      public static function setInstance(instance:WxAppRef):Void;
    @:native("OnInit")                  public function init():Bool;
    @:native("OnRun")                   public function run():Void;
    @:native("OnExit")                  public function exit():Void;
}
