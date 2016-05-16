package wx.widgets;

@:headerCode("
#include <wx/app.h>
#undef RegisterClass
")
@:unreflective
@:native("wxAppConsole")
extern class AppConsole extends EvtHandler implements EventFilter {
}
