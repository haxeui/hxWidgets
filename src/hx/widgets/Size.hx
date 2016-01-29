package hx.widgets;

class Size {
    private var _ref:WxSizeRef;
    public function new(width:Int = 0, height:Int = 0) {
        _ref = WxSizeRef.createInstance();
        _ref.setWidth(width);
        _ref.setHeight(height);
    }
    
    public var width(get, set):Int;
    private function get_width():Int {
        return _ref.getWidth();
    }
    private function set_width(value:Int):Int {
        _ref.setWidth(value);
        return value;
    }
    
    public var height(get, set):Int;
    private function get_height():Int {
        return _ref.getHeight();
    }
    private function set_height(value:Int):Int {
        _ref.setHeight(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static var defaultSize(get, null):Size;
    private static function get_defaultSize():Size {
        return new Size(-1, -1);
    }
    
    public static var defaultSizeRef(get, null):WxSizeRef;
    private static function get_defaultSizeRef():WxSizeRef {
        return defaultSize._ref;
    }
}

@:include("wx/gdicmn.h")
@:unreflective
@:native("cpp::Reference<wxSize>")
extern class WxSizeRef extends WxSize {
    @:native("new wxSize")      public static function createInstance():WxSizeRef;
}

@:include("wx/gdicmn.h")
@:unreflective
@:native("wxSize")
extern class WxSize {
    @:native("GetWidth")        public function getWidth():Int;
    @:native("GetHeight")       public function getHeight():Int;
    @:native("SetWidth")        public function setWidth(value:Int):Void;
    @:native("SetHeight")       public function setHeight(value:Int):Void;
}
