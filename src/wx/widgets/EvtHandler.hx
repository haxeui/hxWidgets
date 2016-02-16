package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("cpp::Reference<wxEvtHandler>")
extern class EvtHandler extends EvtHandlerImpl {
    @:native("new wxEvtHandler") public static function createInstance():EvtHandler;
}

@:include("wx/event.h")
@:unreflective
@:native("wxEvtHandler")
extern class EvtHandlerImpl {
}
