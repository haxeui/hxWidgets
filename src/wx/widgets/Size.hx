package wx.widgets;

@:include("wx/gdicmn.h")
@:unreflective
@:native("cpp::Reference<wxSize>")
extern class Size extends SizeImpl {
    @:native("new wxSize")      public static function createInstance():Size;
}

@:include("wx/gdicmn.h")
@:unreflective
@:native("wxSize")
extern class SizeImpl {
    @:native("GetWidth")        public function getWidth():Int;
    @:native("GetHeight")       public function getHeight():Int;
    @:native("SetWidth")        public function setWidth(value:Int):Void;
    @:native("SetHeight")       public function setHeight(value:Int):Void;
}
