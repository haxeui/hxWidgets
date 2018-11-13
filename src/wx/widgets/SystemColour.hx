package wx.widgets;

@:enum extern abstract SystemColour(SystemColourImpl) {
    @:native("wxSYS_COLOUR_DESKTOP ")      var COLOUR_DESKTOP ;
    @:native("wxSYS_COLOUR_WINDOW")      var COLOUR_WINDOW;
    @:native("wxSYS_COLOUR_HOTLIGHT")      var COLOUR_HOTLIGHT;
    @:native("wxSYS_COLOUR_APPWORKSPACE")      var COLOUR_APPWORKSPACE;
    @:native("wxSYS_COLOUR_FRAMEBK")      var COLOUR_FRAMEBK;
     
     
}

@:include("wx/settings.h")
@:native("cpp::Struct<wxSystemColour, cpp::EnumHandler>")
extern class SystemColourImpl {
}
