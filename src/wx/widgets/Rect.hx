package wx.widgets;

@:include("wx/gdicmn.h")
@:unreflective
@:native("cpp::Reference<wxRect>")
extern class Rect extends RectImpl {
    @:native("new wxRect")      public static function createInstance():Rect;
}

@:include("wx/gdicmn.h")
@:unreflective
@:native("wxRect")
extern class RectImpl {
    @:native("GetWidth")        public function getWidth():Int;
    @:native("GetHeight")       public function getHeight():Int;
    @:native("SetWidth")        public function setWidth(value:Int):Void;
    @:native("SetHeight")       public function setHeight(value:Int):Void;
}
