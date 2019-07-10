package wx.widgets;

@:enum extern abstract SystemColour(SystemColourImpl) {
    @:native("wxSYS_COLOUR_SCROLLBAR")                  var COLOUR_SCROLLBAR;
    @:native("wxSYS_COLOUR_DESKTOP")                    var COLOUR_DESKTOP;
    @:native("wxSYS_COLOUR_ACTIVECAPTION")              var COLOUR_ACTIVECAPTION;
    @:native("wxSYS_COLOUR_INACTIVECAPTION")            var COLOUR_INACTIVECAPTION;
    @:native("wxSYS_COLOUR_MENU")                       var COLOUR_MENU;
    @:native("wxSYS_COLOUR_WINDOW")                     var COLOUR_WINDOW;
    @:native("wxSYS_COLOUR_WINDOWFRAME")                var COLOUR_WINDOWFRAME;
    @:native("wxSYS_COLOUR_MENUTEXT")                   var COLOUR_MENUTEXT;
    @:native("wxSYS_COLOUR_WINDOWTEXT")                 var COLOUR_WINDOWTEXT;
    @:native("wxSYS_COLOUR_CAPTIONTEXT")                var COLOUR_CAPTIONTEXT;
    @:native("wxSYS_COLOUR_ACTIVEBORDER")               var COLOUR_ACTIVEBORDER;
    @:native("wxSYS_COLOUR_INACTIVEBORDER")             var COLOUR_INACTIVEBORDER;
    @:native("wxSYS_COLOUR_APPWORKSPACE")               var COLOUR_APPWORKSPACE;
    @:native("wxSYS_COLOUR_HIGHLIGHT")                  var COLOUR_HIGHLIGHT;
    @:native("wxSYS_COLOUR_HIGHLIGHTTEXT")              var COLOUR_HIGHLIGHTTEXT;
    @:native("wxSYS_COLOUR_BTNFACE")                    var COLOUR_BTNFACE;
    @:native("wxSYS_COLOUR_BTNSHADOW")                  var COLOUR_BTNSHADOW;
    @:native("wxSYS_COLOUR_GRAYTEXT")                   var COLOUR_GRAYTEXT;
    @:native("wxSYS_COLOUR_BTNTEXT")                    var COLOUR_BTNTEXT;
    @:native("wxSYS_COLOUR_INACTIVECAPTIONTEXT")        var COLOUR_INACTIVECAPTIONTEXT;
    @:native("wxSYS_COLOUR_BTNHIGHLIGHT")               var COLOUR_BTNHIGHLIGHT;
    @:native("wxSYS_COLOUR_3DDKSHADOW")                 var COLOUR_3DDKSHADOW;
    @:native("wxSYS_COLOUR_3DLIGHT")                    var COLOUR_3DLIGHT;
    @:native("wxSYS_COLOUR_INFOTEXT")                   var COLOUR_INFOTEXT;
    @:native("wxSYS_COLOUR_INFOBK")                     var COLOUR_INFOBK;
    @:native("wxSYS_COLOUR_LISTBOX")                    var COLOUR_LISTBOX;
    @:native("wxSYS_COLOUR_HOTLIGHT")                   var COLOUR_HOTLIGHT;
    @:native("wxSYS_COLOUR_GRADIENTACTIVECAPTION")      var COLOUR_GRADIENTACTIVECAPTION;
    @:native("wxSYS_COLOUR_GRADIENTINACTIVECAPTION")    var COLOUR_GRADIENTINACTIVECAPTION;
    @:native("wxSYS_COLOUR_MENUHILIGHT")                var COLOUR_MENUHILIGHT;
    @:native("wxSYS_COLOUR_MENUBAR")                    var COLOUR_MENUBAR;
    @:native("wxSYS_COLOUR_LISTBOXTEXT")                var COLOUR_LISTBOXTEXT;
    @:native("wxSYS_COLOUR_LISTBOXHIGHLIGHTTEXT")       var COLOUR_LISTBOXHIGHLIGHTTEXT;
    @:native("wxSYS_COLOUR_BACKGROUND")                 var COLOUR_BACKGROUND;
    @:native("wxSYS_COLOUR_3DFACE")                     var COLOUR_3DFACE;
    @:native("wxSYS_COLOUR_3DSHADOW")                   var COLOUR_3DSHADOW;
    @:native("wxSYS_COLOUR_BTNHILIGHT")                 var COLOUR_BTNHILIGHT;
    @:native("wxSYS_COLOUR_3DHIGHLIGHT")                var COLOUR_3DHIGHLIGHT;
    @:native("wxSYS_COLOUR_3DHILIGHT")                  var COLOUR_3DHILIGHT;
    @:native("wxSYS_COLOUR_FRAMEBK")                    var COLOUR_FRAMEBK;
}

@:include("wx/settings.h")
@:native("cpp::Struct<wxSystemColour, cpp::EnumHandler>")
extern class SystemColourImpl {
}
