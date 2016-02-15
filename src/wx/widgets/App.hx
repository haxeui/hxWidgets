package wx.widgets;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
@:unreflective
@:native("wxApp*")
extern class App extends AppImpl {
    @:native("new wxApp")               public static function createInstance():App;
    @:native("wxApp::SetInstance")      public static function setInstance(instance:App):Void;
}

@:unreflective
@:native("wxApp")
extern class AppImpl {
    @:native("OnInit")                  public function init():Bool;
    @:native("OnRun")                   public function run():Void;
    @:native("OnExit")                  public function exit():Void;
}
