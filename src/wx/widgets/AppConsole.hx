package wx.widgets;

@:headerCode("
#include <wx/app.h>
#undef RegisterClass
")
@:unreflective
@:native("wxAppConsole")
@:structAccess
extern class AppConsole extends EvtHandler implements EventFilter {
    @:native("SetCLocale")      public function setCLocale():Void;
}
