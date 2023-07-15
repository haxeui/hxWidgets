package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/slider.h")
@:unreflective
@:native("wxSlider")
@:structAccess
extern class Slider extends Control {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSlider")            private static function _new():RawPointer<Slider>;
                                        public static inline function createInstance():Pointer<Slider> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, value:Int, minValue:Int, maxValue:Int, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetValue")                public function getValue():Int;
    @:native("SetValue")                public function setValue(value:Int):Void;
    @:native("GetMin")                  public function getMin():Int;
    @:native("SetMin")                  public function setMin(value:Int):Void;
    @:native("GetMax")                  public function getMax():Int;
    @:native("SetMax")                  public function setMax(value:Int):Void;
    @:native("SetSelection")            public function setSelection(startPos:Int, endPos:Int):Void;
    @:native("GetSelStart")             public function getSelStart():Int;
    @:native("GetSelEnd")               public function getSelEnd():Int;
    @:native("ClearSel")                public function clearSel():Void;
    @:native("ClearTicks")              public function clearTicks():Void;
    @:native("GetLineSize")             public function getLineSize():Int;
    @:native("SetLineSize")             public function setLineSize(lineSize:Int):Void;
    @:native("GetPageSize")             public function getPageSize():Int;
    @:native("SetPageSize")             public function setPageSize(pageSize:Int):Void;
    @:native("SetRange")                public function setRange(minValue:Int, maxValue:Int):Void;
    @:native("GetThumbLength")          public function getThumbLength():Int;
    @:native("SetThumbLength")          public function setThumbLength(len:Int):Void;
    @:native("GetTickFreq")             public function getTickFreq():Int;
    @:native("SetTickFreq")             public function setTickFreq(freq:Int):Void;
    @:native("SetTick")                 public function setTick(tickPos:Int):Void;

}
