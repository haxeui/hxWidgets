package wx.widgets;

@:include("wx/scrolwin.h")
@:unreflective
@:native("wxScrolledWindow*")
extern class ScrolledWindow extends ScrolledWindowImpl {
    @:native("new wxScrolledWindow")    public static function createInstance():ScrolledWindow;
}

@:include("wx/scrolwin.h")
@:unreflective
@:native("wxScrolledWindow")
extern class ScrolledWindowImpl extends Window {
    @:native("Create")                  public function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    @:native("SetScrollbars")           public function setScrollbars(pixelsPerUnitX:Int, pixelsPerUnitY:Int, noUnitsX:Int, noUnitsY:Int):Void;
}
