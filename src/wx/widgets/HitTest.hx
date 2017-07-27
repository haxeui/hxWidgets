package wx.widgets;

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
