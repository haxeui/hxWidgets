package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
@:unreflective
@:native("wxApp")
extern class App {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxApp")               private static function _new():RawPointer<App>;
                                        public static inline function createInstance():Pointer<App> return Pointer.fromRaw(_new());
    @:native("wxApp::SetInstance")      public static function setInstance(instance:RawPointer<App>):Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("OnInit")                  public function init():Bool;
    @:native("OnRun")                   public function run():Void;
    @:native("OnExit")                  public function exit():Void;
}
