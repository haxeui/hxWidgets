package wx.widgets;

#if STYLEDTEXTCTRL
@:headerCode("
#include <wx/stc/stc.h>
")
#end

class StyledTextCtrlEventType {
    #if STYLEDTEXTCTRL
    
    public static var UPDATEUI:Int          = untyped __cpp__("wxEVT_STC_UPDATEUI");
    
    #end
}
