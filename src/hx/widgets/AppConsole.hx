package hx.widgets;

import cpp.Pointer;
import wx.widgets.AppConsole in WxAppConsole;

@:headerCode("
#include <wx/app.h>
#undef RegisterClass
")
class AppConsole extends EvtHandler implements EventFilter {

    public function new() {
        super();
    }

    public function yield(onlyIfNeeded:Bool = false):Bool {
        return appConsoleRef.ptr.yield(onlyIfNeeded);
    }
    
    public function scheduleForDestruction(object:Object) {
        appConsoleRef.ptr.scheduleForDestruction(object._ref.raw);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var appConsoleRef(get, null):Pointer<WxAppConsole>;
    private function get_appConsoleRef():Pointer<WxAppConsole> {
        return _ref.reinterpret();
    }
}
