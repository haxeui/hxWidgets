package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:headerCode("
#include <wx/app.h>
#undef RegisterClass
")
@:unreflective
@:native("wxApp")
@:structAccess
extern class App extends AppConsole {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxApp")               private static function _new():RawPointer<App>;
                                        public static inline function createInstance():Pointer<App> {
                                            return Pointer.fromRaw(_new());
                                        }
    @:native("wxApp::SetInstance")      public static function setInstance(instance:RawPointer<App>):Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("OnInit")                  public function init():Bool;
    @:native("OnRun")                   public function run():Void;
    @:native("OnExit")                  public function exit():Void;
    @:native("GetTraits")               public function getTraits():RawPointer<AppTraits>;
    @:native("GetTopWindow")            public function getTopWindow():RawPointer<Window>;
    @:native("SetTopWindow")            public function setTopWindow(window:RawPointer<Window>):Void;
    @:native("SetAppName")              public function setAppName(name:WxString):Void;
    @:native("GetAppName")              public function getAppName():WxString;

}
