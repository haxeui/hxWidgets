package hx.widgets;

import hx.widgets.EvtHandler.WxEvtHandler;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;

class Window extends EvtHandler {
    public function new(parent:Window, id:Int) {
        super();
    }

    public function show(value:Bool) {
        _ref.show(value);
    }
    
    public function setSize(x:Int, y:Int, width:Int, height:Int) {
        _ref.setSize(x, y, width, height);
    }
    
    public function move(x:Int, y:Int) {
        _ref.move(x, y);
    }
    
    public function addChild(child:Window) {
        _ref.addChild(child._ref);
    }
    
    public function refresh() {
        _ref.refresh();
    }
    
    public var backgroundColour(get, set):Int;
    private function get_backgroundColour():Int {
        return -1;
    }
    private function set_backgroundColour(colour:Int):Int {
        _ref.setBackgroundColour(colour);
        return colour;
    }

    public var windowStyle(get, set):Int;
    private function get_windowStyle():Int {
        return _ref.getWindowStyle();
    }
    private function set_windowStyle(style:Int):Int {
        _ref.setWindowStyle(style);
        return style;
    }
    
    public function getSize():Size {
        var ref:WxSizeRef = _ref.getSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function getPosition():Point {
        var ref:WxPointRef = _ref.getPosition();
        return new Point(ref.x, ref.y);
    }
    
    public var x(get, set):Int;
    private function get_x():Int {
        return getPosition().x;
    }
    private function set_x(value:Int):Int {
        setSize(value, y, width, height);
        return value;
    }
    
    public var y(get, set):Int;
    private function get_y():Int {
        return getPosition().y;
    }
    private function set_y(value:Int):Int {
        setSize(x, value, width, height);
        return value;
    }
    
    public var width(get, set):Int;
    private function get_width():Int {
        return getSize().width;
    }
    private function set_width(value:Int):Int {
        setSize(x, y, value, height);
        return value;
    }
    
    public var height(get, set):Int;
    private function get_height():Int {
        return getSize().height;
    }
    private function set_height(value:Int):Int {
        setSize(x, y, width, value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private static var nullWindowRef(get, null):WxWindowRef;
    private static inline function get_nullWindowRef():WxWindowRef {
        return cast 0;
    }
    
}

@:include("wx/window.h")
@:native("cpp.Reference<wxWindow>")
extern class WxWindowRef extends WxWindow {
    @:native("new wxWindow")            public static function createInstance():WxWindowRef;
}

@:include("wx/window.h")
@:native("wxWindow")
extern class WxWindow extends WxEvtHandler {
    @:native("Show")                    public function show(value:Bool):Void;
    @:native("Refresh")                 public function refresh():Void;
    @:native("SetSize")                 public function setSize(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("Move")                    public function move(x:Int, y:Int):Void;
    @:native("AddChild")                public function addChild(child:WxWindowRef):Void;
    @:native("GetBackgroundColour")     public function getBackgroundColour():Int;
    @:native("SetBackgroundColour")     public function setBackgroundColour(colour:Int):Void;
    @:native("GetWindowStyle")          public function getWindowStyle():Int;
    @:native("SetWindowStyle")          public function setWindowStyle(style:Int):Void;
    @:native("GetSize")                 public function getSize():WxSizeRef;
    @:native("GetPosition")             public function getPosition():WxPointRef;
}
