package wx.widgets;

@:include("wx/scrolbar.h")
@:unreflective
@:native("cpp::Reference<wxScrollBar>")
extern class ScrollBar extends ScrollBarImpl {
    @:native("new wxScrollBar")    public static function createInstance():ScrollBar;
}

@:include("wx/scrolbar.h")
@:unreflective
@:native("wxScrollBar")
extern class ScrollBarImpl extends Control {
    @:native("SetScrollbar")        public function setScrollbar(position:Int, thumbSize:Int, range:Int, pageSize:Int):Void;
    
    @:native("GetPageSize")         public function getPageSize():Int;
    @:native("GetRange")            public function getRange():Int;
    @:native("GetThumbPosition")    public function getThumbPosition():Int;
    @:native("GetThumbSize")        public function getThumbSize():Int;
}