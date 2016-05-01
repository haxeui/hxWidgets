package hx.widgets;

import cpp.Pointer;
import wx.widgets.Size in WxSize;

class Size {
    private var _width:Int;
    private var _height:Int;
    
    public function new(width:Int = 0, height:Int = 0) {
        _width = width;
        _height = height;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var width(get, set):Int;
    private function get_width():Int {
        return _width;
    }
    private function set_width(value:Int):Int {
        _width = value;
        return value;
    }
    
    public var height(get, set):Int;
    private function get_height():Int {
        return _height;
    }
    private function set_height(value:Int):Int {
        _height = value;
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function createPointer():Pointer<WxSize> {
        return WxSize.createInstance(this._width, this._height);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private static var _defaultSize:Pointer<WxSize>; // create and hold our own versions of globals
    public static var defaultSize(get, null):Pointer<WxSize>;
    private static function get_defaultSize():Pointer<WxSize> {
        if (_defaultSize == null) {
            _defaultSize = WxSize.createInstance(-1, -1);
        }
        return _defaultSize;
    }
    
    public static function copy(ptr:Pointer<WxSize>):Size {
        var c:Size = new Size(ptr.ref.getWidth(), ptr.ref.getHeight());
        return c;
    }
}

/*
import wx.widgets.Size in WxSize;

class Size {
    private var _ref:WxSize;

    public function new(width:Int = 0, height:Int = 0) {
        _ref = WxSize.createInstance();
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
    
    public static var defaultSizeRef(get, null):WxSize;
    private static function get_defaultSizeRef():WxSize {
        return defaultSize._ref;
    }
}
*/