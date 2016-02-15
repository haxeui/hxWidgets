package hx.widgets;

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
