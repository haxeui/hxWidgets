package wx.widgets.styles;

#if (haxe_ver >= 3.3)
@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("wxBackgroundStyle")
@:enum extern abstract BackgroundStyle(BackgroundStyleImpl) {

    @:native("wxBG_STYLE_ERASE")            var BG_ERASE;
    @:native("wxBG_STYLE_SYSTEM")           var BG_SYSTEM;
    @:native("wxBG_STYLE_PAINT")            var BG_PAINT;
    @:native("wxBG_STYLE_COLOUR")           var BG_COLOUR;
    @:native("wxBG_STYLE_TRANSPARENT")      var BG_TRANSPARENT;

}

@:headerCode("#include <wx/defs.h>")
@:unreflective
@:native("wxBackgroundStyle")
extern class BackgroundStyleImpl {
}
#else
@:headerCode("#include <wx/defs.h>")
abstract BackgroundStyle(Int) {

    public static var BG_ERASE(default, null)              = new BackgroundStyle(untyped __cpp__("::wxBG_STYLE_ERASE"));
    public static var BG_SYSTEM(default, null)             = new BackgroundStyle(untyped __cpp__("::wxBG_STYLE_SYSTEM"));
    public static var BG_PAINT(default, null)              = new BackgroundStyle(untyped __cpp__("::wxBG_STYLE_PAINT"));
    public static var BG_COLOUR(default, null)             = new BackgroundStyle(untyped __cpp__("::wxBG_STYLE_COLOUR"));
    public static var BG_TRANSPARENT(default, null)        = new BackgroundStyle(untyped __cpp__("::wxBG_STYLE_TRANSPARENT")); // 'TRANSPARENT' seems used??

    inline public function new(i:Int) {
        this = i;
    }

}
#end
