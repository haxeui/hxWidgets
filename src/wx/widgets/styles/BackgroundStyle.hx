package wx.widgets.styles;

@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("wxBackgroundStyle")
@:enum extern abstract BackgroundStyle(BackgroundStyleImpl) {

    @:native("wxBG_STYLE_ERASE")            var BG_ERASE;
    @:native("wxBG_STYLE_SYSTEM")           var BG_SYSTEM;
    @:native("wxBG_STYLE_PAINT")            var BG_PAINT;
    @:native("wxBG_STYLE_COLOUR")           var BG_COLOUR;
    @:native("wxBG_STYLE_TRANSPARENT")      var BG_TRANSPARENT;
    @:native("wxBG_STYLE_CUSTOM")           var BG_CUSTOM;

}

@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("cpp::Struct<wxBackgroundStyle, cpp::EnumHandler>")
extern class BackgroundStyleImpl {
}
