package wx.widgets;

@:include("wx/gauge.h")
@:unreflective
@:native("cpp::Reference<wxGauge>")
extern class Gauge extends GaugeImpl {
    @:native("new wxGauge")     public static function createInstance():Gauge;
}

@:include("wx/gauge.h")
@:unreflective
@:native("wxGauge")
extern class GaugeImpl extends Control {
    @:native("Create")          @:overload(function(parent:Window, id:Int, range:Int, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")          public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("SetValue")        public function setValue(value:Int):Void;
    @:native("GetValue")        public function getValue():Int;
    @:native("Pulse")           public function pulse():Void;
}
