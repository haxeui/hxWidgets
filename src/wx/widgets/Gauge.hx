package wx.widgets;

@:include("wx/gauge.h")
@:unreflective
@:native("wxGauge*")
extern class Gauge extends GaugeImpl {
    @:native("new wxGauge")     public static function createInstance():Gauge;
}

@:include("wx/gauge.h")
@:unreflective
@:native("wxGauge")
extern class GaugeImpl extends Window {
    @:native("Create")          public function create(parent:Window, id:Int, range:Int):Bool;
    @:native("SetValue")        public function setValue(value:Int):Void;
    @:native("GetValue")        public function getValue():Int;
}
