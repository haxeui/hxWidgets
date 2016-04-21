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
    @:native("GetX")            public function getX():Int;
    @:native("SetX")            public function setX(value:Int):Void;
    @:native("GetY")            public function getY():Int;
    @:native("SetY")            public function setY(value:Int):Void;
    @:native("GetWidth")        public function getWidth():Int;
    @:native("SetWidth")        public function setWidth(value:Int):Void;
    @:native("GetHeight")       public function getHeight():Int;
    @:native("SetHeight")       public function setHeight(value:Int):Void;
}
