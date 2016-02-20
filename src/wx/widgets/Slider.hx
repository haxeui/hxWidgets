package wx.widgets;

@:include("wx/slider.h")
@:unreflective
@:native("cpp::Reference<wxSlider>")
extern class Slider extends SliderImpl {
    @:native("new wxSlider")    public static function createInstance():Slider;
}

@:include("wx/slider.h")
@:unreflective
@:native("wxSlider")
extern class SliderImpl extends Control {
    @:native("Create")          @:overload(function(parent:Window, id:Int, value:Int, minValue:Int, maxValue:Int, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")          public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("SetValue")        public function setValue(value:Int):Void;
    @:native("GetValue")        public function getValue():Int;
    @:native("SetMin")          public function setMin(value:Int):Void;
    @:native("GetMin")          public function getMin():Int;
    @:native("SetMax")          public function setMax(value:Int):Void;
    @:native("GetMax")          public function getMax():Int;
    @:native("SetSelection")    public function setSelection(startPos:Int, endPos:Int):Void;
    @:native("GetSelStart")     public function getSelStart():Int;
    @:native("GetSelEnd")       public function getSelEnd():Int;
}
