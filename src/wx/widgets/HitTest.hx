package wx.widgets;

#if (haxe_ver >= 3.3)
@:enum extern abstract HitTest(HitTestImpl) {

    @:native("wxHT_NOWHERE")                    var NOWHERE;
    @:native("wxHT_SCROLLBAR_FIRST")            var SCROLLBAR_FIRST;
    @:native("wxHT_SCROLLBAR_ARROW_LINE_1")     var SCROLLBAR_ARROW_LINE_1;
    @:native("wxHT_SCROLLBAR_ARROW_LINE_2")     var SCROLLBAR_ARROW_LINE_2;
    @:native("wxHT_SCROLLBAR_ARROW_PAGE_1")     var SCROLLBAR_ARROW_PAGE_1;
    @:native("wxHT_SCROLLBAR_ARROW_PAGE_2")     var SCROLLBAR_ARROW_PAGE_2;
    @:native("wxHT_SCROLLBAR_THUMB")            var SCROLLBAR_THUMB;
    @:native("wxHT_SCROLLBAR_BAR_1")            var SCROLLBAR_BAR_1;
    @:native("wxHT_SCROLLBAR_BAR_2")            var SCROLLBAR_BAR_2;
    @:native("wxHT_SCROLLBAR_LAST")             var SCROLLBAR_LAST;
    @:native("wxHT_WINDOW_OUTSIDE")             var WINDOW_OUTSIDE;
    @:native("wxHT_WINDOW_INSIDE")              var WINDOW_INSIDE;
    @:native("wxHT_WINDOW_VERT_SCROLLBAR")      var WINDOW_VERT_SCROLLBAR;
    @:native("wxHT_WINDOW_HORZ_SCROLLBAR")      var WINDOW_HORZ_SCROLLBAR;
    @:native("wxHT_WINDOW_CORNER")              var WINDOW_CORNER;
    @:native("wxHT_MAX")                        var MAX;
}

@:include("wx/defs.h")
@:unreflective
@:native("wxHitTest")
extern class HitTestImpl {
}
#else
@:headerCode("#include <wx/defs.h>")
abstract HitTest(Int) from Int to Int {

    public static var NOWHERE(default, null)                        = new HitTest(untyped __cpp__("::wxHT_NOWHERE"));
    public static var SCROLLBAR_FIRST(default, null)                = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_FIRST"));
    public static var SCROLLBAR_ARROW_LINE_1(default, null)         = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_ARROW_LINE_1"));
    public static var SCROLLBAR_ARROW_LINE_2(default, null)         = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_ARROW_LINE_2"));
    public static var SCROLLBAR_ARROW_PAGE_1(default, null)         = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_ARROW_PAGE_1"));
    public static var SCROLLBAR_ARROW_PAGE_2(default, null)         = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_ARROW_PAGE_2"));
    public static var SCROLLBAR_THUMB(default, null)                = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_THUMB"));
    public static var SCROLLBAR_BAR_1(default, null)                = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_BAR_1"));
    public static var SCROLLBAR_BAR_2(default, null)                = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_BAR_2"));
    public static var SCROLLBAR_LAST(default, null)                 = new HitTest(untyped __cpp__("::wxHT_SCROLLBAR_LAST"));
    public static var WINDOW_OUTSIDE(default, null)                 = new HitTest(untyped __cpp__("::wxHT_WINDOW_OUTSIDE"));
    public static var WINDOW_INSIDE(default, null)                  = new HitTest(untyped __cpp__("::wxHT_WINDOW_INSIDE"));
    public static var WINDOW_VERT_SCROLLBAR(default, null)          = new HitTest(untyped __cpp__("::wxHT_WINDOW_VERT_SCROLLBAR"));
    public static var WINDOW_HORZ_SCROLLBAR(default, null)          = new HitTest(untyped __cpp__("::wxHT_WINDOW_HORZ_SCROLLBAR"));
    public static var WINDOW_CORNER(default, null)                  = new HitTest(untyped __cpp__("::wxHT_WINDOW_CORNER"));
    public static var MAX(default, null)                            = new HitTest(untyped __cpp__("::wxHT_MAX"));

    inline public function new(i:Int) {
        this = i;
    }

}
#end
